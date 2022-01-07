
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {scalar_t__ number; } ;
struct pardevice {int dummy; } ;
struct pardev_cb {int flags; } ;
struct gc {scalar_t__ parportno; TYPE_1__* pads; int timer; struct pardevice* pd; int mutex; } ;
typedef int gc_parport_cb ;
struct TYPE_4__ {int nargs; scalar_t__* args; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 int GC_MAX_DEVICES ;
 int GC_MAX_PORTS ;
 int GFP_KERNEL ;
 int PARPORT_FLAG_EXCL ;
 struct gc** gc_base ;
 TYPE_2__* gc_cfg ;
 scalar_t__ gc_setup_pad (struct gc*,int,int) ;
 int gc_timer ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct gc*) ;
 struct gc* kzalloc (int,int ) ;
 int memset (struct pardev_cb*,int ,int) ;
 int mutex_init (int *) ;
 struct pardevice* parport_register_dev_model (struct parport*,char*,struct pardev_cb*,int) ;
 int parport_unregister_device (struct pardevice*) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void gc_attach(struct parport *pp)
{
 struct gc *gc;
 struct pardevice *pd;
 int i, port_idx;
 int count = 0;
 int *pads, n_pads;
 struct pardev_cb gc_parport_cb;

 for (port_idx = 0; port_idx < GC_MAX_PORTS; port_idx++) {
  if (gc_cfg[port_idx].nargs == 0 || gc_cfg[port_idx].args[0] < 0)
   continue;

  if (gc_cfg[port_idx].args[0] == pp->number)
   break;
 }

 if (port_idx == GC_MAX_PORTS) {
  pr_debug("Not using parport%d.\n", pp->number);
  return;
 }
 pads = gc_cfg[port_idx].args + 1;
 n_pads = gc_cfg[port_idx].nargs - 1;

 memset(&gc_parport_cb, 0, sizeof(gc_parport_cb));
 gc_parport_cb.flags = PARPORT_FLAG_EXCL;

 pd = parport_register_dev_model(pp, "gamecon", &gc_parport_cb,
     port_idx);
 if (!pd) {
  pr_err("parport busy already - lp.o loaded?\n");
  return;
 }

 gc = kzalloc(sizeof(struct gc), GFP_KERNEL);
 if (!gc) {
  pr_err("Not enough memory\n");
  goto err_unreg_pardev;
 }

 mutex_init(&gc->mutex);
 gc->pd = pd;
 gc->parportno = pp->number;
 timer_setup(&gc->timer, gc_timer, 0);

 for (i = 0; i < n_pads && i < GC_MAX_DEVICES; i++) {
  if (!pads[i])
   continue;

  if (gc_setup_pad(gc, i, pads[i]))
   goto err_unreg_devs;

  count++;
 }

 if (count == 0) {
  pr_err("No valid devices specified\n");
  goto err_free_gc;
 }

 gc_base[port_idx] = gc;
 return;

 err_unreg_devs:
 while (--i >= 0)
  if (gc->pads[i].dev)
   input_unregister_device(gc->pads[i].dev);
 err_free_gc:
 kfree(gc);
 err_unreg_pardev:
 parport_unregister_device(pd);
}

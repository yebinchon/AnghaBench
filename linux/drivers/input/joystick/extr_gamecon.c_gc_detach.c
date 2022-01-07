
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {scalar_t__ number; } ;
struct gc {scalar_t__ parportno; int pd; TYPE_1__* pads; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int GC_MAX_DEVICES ;
 int GC_MAX_PORTS ;
 struct gc** gc_base ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct gc*) ;
 int parport_unregister_device (int ) ;

__attribute__((used)) static void gc_detach(struct parport *port)
{
 int i;
 struct gc *gc;

 for (i = 0; i < GC_MAX_PORTS; i++) {
  if (gc_base[i] && gc_base[i]->parportno == port->number)
   break;
 }

 if (i == GC_MAX_PORTS)
  return;

 gc = gc_base[i];
 gc_base[i] = ((void*)0);

 for (i = 0; i < GC_MAX_DEVICES; i++)
  if (gc->pads[i].dev)
   input_unregister_device(gc->pads[i].dev);
 parport_unregister_device(gc->pd);
 kfree(gc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pdev; } ;
struct uld_ctx {TYPE_2__* dev; TYPE_3__ lldi; int reg_work; } ;
struct ib_event {int * device; int event; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {int ibdev; TYPE_1__ rdev; } ;







 int IB_EVENT_DEVICE_FATAL ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int T4_FATAL_ERROR ;
 TYPE_2__* c4iw_alloc (TYPE_3__*) ;
 int c4iw_register_device ;
 int c4iw_remove (struct uld_ctx*) ;
 int ib_dispatch_event (struct ib_event*) ;
 int pci_name (int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,int ,int ) ;
 int pr_info (char*,int ) ;
 int queue_work (int ,int *) ;
 int reg_workq ;

__attribute__((used)) static int c4iw_uld_state_change(void *handle, enum cxgb4_state new_state)
{
 struct uld_ctx *ctx = handle;

 pr_debug("new_state %u\n", new_state);
 switch (new_state) {
 case 128:
  pr_info("%s: Up\n", pci_name(ctx->lldi.pdev));
  if (!ctx->dev) {
   ctx->dev = c4iw_alloc(&ctx->lldi);
   if (IS_ERR(ctx->dev)) {
    pr_err("%s: initialization failed: %ld\n",
           pci_name(ctx->lldi.pdev),
           PTR_ERR(ctx->dev));
    ctx->dev = ((void*)0);
    break;
   }

   INIT_WORK(&ctx->reg_work, c4iw_register_device);
   queue_work(reg_workq, &ctx->reg_work);
  }
  break;
 case 131:
  pr_info("%s: Down\n", pci_name(ctx->lldi.pdev));
  if (ctx->dev)
   c4iw_remove(ctx);
  break;
 case 130:
 case 129:
  pr_info("%s: Fatal Error\n", pci_name(ctx->lldi.pdev));
  if (ctx->dev) {
   struct ib_event event = {};

   ctx->dev->rdev.flags |= T4_FATAL_ERROR;
   event.event = IB_EVENT_DEVICE_FATAL;
   event.device = &ctx->dev->ibdev;
   ib_dispatch_event(&event);
   c4iw_remove(ctx);
  }
  break;
 case 132:
  pr_info("%s: Detach\n", pci_name(ctx->lldi.pdev));
  if (ctx->dev)
   c4iw_remove(ctx);
  break;
 }
 return 0;
}

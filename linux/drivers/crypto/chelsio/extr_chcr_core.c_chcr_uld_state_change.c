
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct uld_ctx {TYPE_1__ dev; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;


 int CHCR_INIT ;




 int chcr_detach_device (struct uld_ctx*) ;
 int chcr_dev_add (struct uld_ctx*) ;
 int start_crypto () ;

__attribute__((used)) static int chcr_uld_state_change(void *handle, enum cxgb4_state state)
{
 struct uld_ctx *u_ctx = handle;
 int ret = 0;

 switch (state) {
 case 128:
  if (u_ctx->dev.state != CHCR_INIT) {

   return 0;
  }
  chcr_dev_add(u_ctx);
  ret = start_crypto();
  break;

 case 131:
  chcr_detach_device(u_ctx);
  break;

 case 129:
 case 130:
 default:
  break;
 }
 return ret;
}

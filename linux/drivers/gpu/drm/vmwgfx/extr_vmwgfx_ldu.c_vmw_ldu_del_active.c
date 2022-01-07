
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {struct vmw_legacy_display* ldu_priv; } ;
struct vmw_legacy_display_unit {int active; } ;
struct vmw_legacy_display {scalar_t__ num_active; TYPE_1__* fb; } ;
struct TYPE_2__ {int (* unpin ) (TYPE_1__*) ;} ;


 int BUG_ON (int) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int vmw_ldu_del_active(struct vmw_private *vmw_priv,
         struct vmw_legacy_display_unit *ldu)
{
 struct vmw_legacy_display *ld = vmw_priv->ldu_priv;
 if (list_empty(&ldu->active))
  return 0;


 list_del_init(&ldu->active);
 if (--(ld->num_active) == 0) {
  BUG_ON(!ld->fb);
  if (ld->fb->unpin)
   ld->fb->unpin(ld->fb);
  ld->fb = ((void*)0);
 }

 return 0;
}

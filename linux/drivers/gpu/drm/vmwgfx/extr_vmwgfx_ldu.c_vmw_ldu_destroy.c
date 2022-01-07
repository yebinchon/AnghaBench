
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_legacy_display_unit {int base; int active; } ;


 int kfree (struct vmw_legacy_display_unit*) ;
 int list_del_init (int *) ;
 int vmw_du_cleanup (int *) ;

__attribute__((used)) static void vmw_ldu_destroy(struct vmw_legacy_display_unit *ldu)
{
 list_del_init(&ldu->active);
 vmw_du_cleanup(&ldu->base);
 kfree(ldu);
}

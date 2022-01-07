
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_screen_object_unit {int base; } ;


 int kfree (struct vmw_screen_object_unit*) ;
 int vmw_du_cleanup (int *) ;

__attribute__((used)) static void vmw_sou_destroy(struct vmw_screen_object_unit *sou)
{
 vmw_du_cleanup(&sou->base);
 kfree(sou);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_info {int irq; int gref; } ;


 int gnttab_end_foreign_access (int,int ,unsigned long) ;
 int unbind_from_irqhandler (int,struct xenkbd_info*) ;

__attribute__((used)) static void xenkbd_disconnect_backend(struct xenkbd_info *info)
{
 if (info->irq >= 0)
  unbind_from_irqhandler(info->irq, info);
 info->irq = -1;
 if (info->gref >= 0)
  gnttab_end_foreign_access(info->gref, 0, 0UL);
 info->gref = -1;
}

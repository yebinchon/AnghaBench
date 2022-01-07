
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scx200_acb_iface {int base; int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct scx200_acb_iface*) ;
 int release_region (int ,int) ;

__attribute__((used)) static void scx200_cleanup_iface(struct scx200_acb_iface *iface)
{
 i2c_del_adapter(&iface->adapter);
 release_region(iface->base, 8);
 kfree(iface);
}

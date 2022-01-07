
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_dev_desc {int dummy; } ;


 int cdns_i3c_master_upd_i3c_addr (struct i3c_dev_desc*) ;

__attribute__((used)) static int cdns_i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
         u8 old_dyn_addr)
{
 cdns_i3c_master_upd_i3c_addr(dev);

 return 0;
}

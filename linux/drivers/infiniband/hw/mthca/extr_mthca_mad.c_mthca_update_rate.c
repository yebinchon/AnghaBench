
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;
struct mthca_dev {int* rate; TYPE_1__ ib_dev; } ;
struct ib_port_attr {int active_speed; int active_width; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_warn (int *,char*,int,int) ;
 int ib_query_port (TYPE_1__*,int,struct ib_port_attr*) ;
 int ib_width_enum_to_int (int ) ;
 int kfree (struct ib_port_attr*) ;
 struct ib_port_attr* kmalloc (int,int ) ;

__attribute__((used)) static int mthca_update_rate(struct mthca_dev *dev, u8 port_num)
{
 struct ib_port_attr *tprops = ((void*)0);
 int ret;

 tprops = kmalloc(sizeof *tprops, GFP_KERNEL);
 if (!tprops)
  return -ENOMEM;

 ret = ib_query_port(&dev->ib_dev, port_num, tprops);
 if (ret) {
  dev_warn(&dev->ib_dev.dev,
    "ib_query_port failed (%d) forport %d\n", ret,
    port_num);
  goto out;
 }

 dev->rate[port_num - 1] = tprops->active_speed *
      ib_width_enum_to_int(tprops->active_width);

out:
 kfree(tprops);
 return ret;
}

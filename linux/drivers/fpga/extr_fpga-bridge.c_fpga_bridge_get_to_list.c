
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int node; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct fpga_bridge*) ;
 int PTR_ERR (struct fpga_bridge*) ;
 int bridge_list_lock ;
 struct fpga_bridge* fpga_bridge_get (struct device*,struct fpga_image_info*) ;
 int list_add (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fpga_bridge_get_to_list(struct device *dev,
       struct fpga_image_info *info,
       struct list_head *bridge_list)
{
 struct fpga_bridge *bridge;
 unsigned long flags;

 bridge = fpga_bridge_get(dev, info);
 if (IS_ERR(bridge))
  return PTR_ERR(bridge);

 spin_lock_irqsave(&bridge_list_lock, flags);
 list_add(&bridge->node, bridge_list);
 spin_unlock_irqrestore(&bridge_list_lock, flags);

 return 0;
}

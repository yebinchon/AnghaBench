
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rdma_restrack_entry {int dummy; } ;
struct TYPE_2__ {int (* fill_res_entry ) (struct sk_buff*,struct rdma_restrack_entry*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int stub1 (struct sk_buff*,struct rdma_restrack_entry*) ;

__attribute__((used)) static bool fill_res_entry(struct ib_device *dev, struct sk_buff *msg,
      struct rdma_restrack_entry *res)
{
 if (!dev->ops.fill_res_entry)
  return 0;
 return dev->ops.fill_res_entry(msg, res);
}

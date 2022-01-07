
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static bool pass_all_filter(struct ib_device *ib_dev, u8 port,
       struct net_device *rdma_ndev, void *cookie)
{
 return 1;
}

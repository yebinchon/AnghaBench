
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_walk_data {struct net_device* result; int addr; } ;


 int dev_hold (struct net_device*) ;
 scalar_t__ ipoib_is_dev_match_addr_rcu (int ,struct net_device*) ;

__attribute__((used)) static int ipoib_upper_walk(struct net_device *upper, void *_data)
{
 struct ipoib_walk_data *data = _data;
 int ret = 0;

 if (ipoib_is_dev_match_addr_rcu(data->addr, upper)) {
  dev_hold(upper);
  data->result = upper;
  ret = 1;
 }

 return ret;
}

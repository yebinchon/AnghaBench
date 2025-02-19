
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upper_list {struct net_device* upper; int list; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int GFP_ATOMIC ;
 int dev_hold (struct net_device*) ;
 struct upper_list* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int netdev_upper_walk(struct net_device *upper, void *data)
{
 struct upper_list *entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 struct list_head *upper_list = data;

 if (!entry)
  return 0;

 list_add_tail(&entry->list, upper_list);
 dev_hold(upper);
 entry->upper = upper;

 return 0;
}

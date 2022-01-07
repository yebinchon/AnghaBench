
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOSYS ;
 struct extcon_dev* ERR_PTR (int ) ;

struct extcon_dev *extcon_find_edev_by_node(struct device_node *node)
{
 return ERR_PTR(-ENOSYS);
}

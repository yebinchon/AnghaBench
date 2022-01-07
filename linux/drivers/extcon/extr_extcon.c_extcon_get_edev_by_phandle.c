
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOSYS ;
 struct extcon_dev* ERR_PTR (int ) ;

struct extcon_dev *extcon_get_edev_by_phandle(struct device *dev, int index)
{
 return ERR_PTR(-ENOSYS);
}

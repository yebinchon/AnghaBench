
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {char const* name; } ;



const char *extcon_get_edev_name(struct extcon_dev *edev)
{
 return !edev ? ((void*)0) : edev->name;
}

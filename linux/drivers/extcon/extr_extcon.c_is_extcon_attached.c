
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int state; } ;


 int BIT (unsigned int) ;

__attribute__((used)) static bool is_extcon_attached(struct extcon_dev *edev, unsigned int index)
{
 return !!(edev->state & BIT(index));
}

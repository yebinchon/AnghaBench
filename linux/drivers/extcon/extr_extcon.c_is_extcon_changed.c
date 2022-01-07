
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int state; } ;


 int BIT (int) ;

__attribute__((used)) static bool is_extcon_changed(struct extcon_dev *edev, int index,
    bool new_state)
{
 int state = !!(edev->state & BIT(index));
 return (state != new_state);
}

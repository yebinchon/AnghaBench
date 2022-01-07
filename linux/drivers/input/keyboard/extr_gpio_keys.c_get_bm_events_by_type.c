
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {unsigned long const* keybit; unsigned long const* swbit; } ;


 int BUG_ON (int) ;
 int EV_KEY ;
 int EV_SW ;

__attribute__((used)) static const unsigned long *get_bm_events_by_type(struct input_dev *dev,
        int type)
{
 BUG_ON(type != EV_SW && type != EV_KEY);

 return (type == EV_KEY) ? dev->keybit : dev->swbit;
}

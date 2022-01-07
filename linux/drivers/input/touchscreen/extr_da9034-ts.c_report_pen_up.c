
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int input_dev; } ;


 int BTN_TOUCH ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static inline void report_pen_up(struct da9034_touch *touch)
{
 input_report_key(touch->input_dev, BTN_TOUCH, 0);
 input_sync(touch->input_dev);
}

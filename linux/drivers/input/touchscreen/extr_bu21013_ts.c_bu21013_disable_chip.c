
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bu21013_ts {int cs_gpiod; } ;


 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void bu21013_disable_chip(void *_ts)
{
 struct bu21013_ts *ts = _ts;

 gpiod_set_value(ts->cs_gpiod, 0);
}

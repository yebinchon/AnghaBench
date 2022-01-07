
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int EV_KEY ;
 int EV_SW ;
 int KEY_CNT ;
 int SW_CNT ;

__attribute__((used)) static int get_n_events_by_type(int type)
{
 BUG_ON(type != EV_SW && type != EV_KEY);

 return (type == EV_KEY) ? KEY_CNT : SW_CNT;
}

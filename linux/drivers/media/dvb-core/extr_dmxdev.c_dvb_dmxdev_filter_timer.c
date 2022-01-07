
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct dmx_sct_filter_params {int timeout; } ;
struct TYPE_4__ {struct dmx_sct_filter_params sec; } ;
struct dmxdev_filter {TYPE_2__ timer; TYPE_1__ params; } ;


 int HZ ;
 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void dvb_dmxdev_filter_timer(struct dmxdev_filter *dmxdevfilter)
{
 struct dmx_sct_filter_params *para = &dmxdevfilter->params.sec;

 del_timer(&dmxdevfilter->timer);
 if (para->timeout) {
  dmxdevfilter->timer.expires =
      jiffies + 1 + (HZ / 2 + HZ * para->timeout) / 1000;
  add_timer(&dmxdevfilter->timer);
 }
}

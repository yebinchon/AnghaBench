
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; } ;


 scalar_t__ LRADC_STATUS ;
 int LRADC_STATUS_TOUCH_DETECT_RAW ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool mxs_lradc_check_touch_event(struct mxs_lradc_ts *ts)
{
 return !!(readl(ts->base + LRADC_STATUS) &
     LRADC_STATUS_TOUCH_DETECT_RAW);
}

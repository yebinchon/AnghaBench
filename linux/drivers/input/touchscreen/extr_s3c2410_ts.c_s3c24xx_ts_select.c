
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_adc_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ io; } ;


 int AUTOPST ;
 int INT_UP ;
 scalar_t__ S3C2410_ADCTSC ;
 int S3C2410_ADCTSC_PULL_UP_DISABLE ;
 int WAIT4INT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int touch_timer ;
 TYPE_1__ ts ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c24xx_ts_select(struct s3c_adc_client *client, unsigned select)
{
 if (select) {
  writel(S3C2410_ADCTSC_PULL_UP_DISABLE | AUTOPST,
         ts.io + S3C2410_ADCTSC);
 } else {
  mod_timer(&touch_timer, jiffies+1);
  writel(WAIT4INT | INT_UP, ts.io + S3C2410_ADCTSC);
 }
}

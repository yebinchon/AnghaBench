
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct fts_data {int dummy; } ;
typedef enum WATCHDOG_RESOLUTION { ____Placeholder_WATCHDOG_RESOLUTION } WATCHDOG_RESOLUTION ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int fts_wd_set_resolution (struct fts_data*,int) ;
 int minutes ;
 int seconds ;
 struct fts_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int fts_wd_set_timeout(struct watchdog_device *wdd, unsigned int timeout)
{
 struct fts_data *data;
 enum WATCHDOG_RESOLUTION resolution = seconds;
 int ret;

 data = watchdog_get_drvdata(wdd);



 if (timeout > 0xFF) {
  timeout = DIV_ROUND_UP(timeout, 60) * 60;
  resolution = minutes;
 }

 ret = fts_wd_set_resolution(data, resolution);
 if (ret < 0)
  return ret;

 wdd->timeout = timeout;
 return 0;
}

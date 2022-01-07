
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct fts_data {int client; } ;


 int FTS_WATCHDOG_TIME_PRESET ;
 int fts_write_byte (int ,int ,int ) ;
 struct fts_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int fts_wd_stop(struct watchdog_device *wdd)
{
 struct fts_data *data;

 data = watchdog_get_drvdata(wdd);
 return fts_write_byte(data->client, FTS_WATCHDOG_TIME_PRESET, 0);
}

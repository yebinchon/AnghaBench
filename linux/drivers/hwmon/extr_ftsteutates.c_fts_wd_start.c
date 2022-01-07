
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int timeout; } ;
struct fts_data {scalar_t__ resolution; int client; } ;


 int FTS_WATCHDOG_TIME_PRESET ;
 int fts_write_byte (int ,int ,int) ;
 struct fts_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int fts_wd_start(struct watchdog_device *wdd)
{
 struct fts_data *data = watchdog_get_drvdata(wdd);

 return fts_write_byte(data->client, FTS_WATCHDOG_TIME_PRESET,
         wdd->timeout / (u8)data->resolution);
}

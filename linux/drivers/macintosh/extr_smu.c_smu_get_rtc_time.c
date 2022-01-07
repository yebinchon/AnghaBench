
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_simple_cmd {int * buffer; } ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;


 int ENODEV ;
 int SMU_CMD_RTC_COMMAND ;
 int SMU_CMD_RTC_GET_DATETIME ;
 void* bcd2hex (int ) ;
 int memset (struct rtc_time*,int ,int) ;
 int * smu ;
 int smu_queue_simple (struct smu_simple_cmd*,int ,int,int *,int *,int ) ;
 int smu_spinwait_simple (struct smu_simple_cmd*) ;

int smu_get_rtc_time(struct rtc_time *time, int spinwait)
{
 struct smu_simple_cmd cmd;
 int rc;

 if (smu == ((void*)0))
  return -ENODEV;

 memset(time, 0, sizeof(struct rtc_time));
 rc = smu_queue_simple(&cmd, SMU_CMD_RTC_COMMAND, 1, ((void*)0), ((void*)0),
         SMU_CMD_RTC_GET_DATETIME);
 if (rc)
  return rc;
 smu_spinwait_simple(&cmd);

 time->tm_sec = bcd2hex(cmd.buffer[0]);
 time->tm_min = bcd2hex(cmd.buffer[1]);
 time->tm_hour = bcd2hex(cmd.buffer[2]);
 time->tm_wday = bcd2hex(cmd.buffer[3]);
 time->tm_mday = bcd2hex(cmd.buffer[4]);
 time->tm_mon = bcd2hex(cmd.buffer[5]) - 1;
 time->tm_year = bcd2hex(cmd.buffer[6]) + 100;

 return 0;
}

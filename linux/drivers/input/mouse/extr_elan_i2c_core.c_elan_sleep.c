
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elan_tp_data {int client; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sleep_control ) (int ,int) ;} ;


 int ETP_RETRY_COUNT ;
 int msleep (int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int elan_sleep(struct elan_tp_data *data)
{
 int repeat = ETP_RETRY_COUNT;
 int error;

 do {
  error = data->ops->sleep_control(data->client, 1);
  if (!error)
   return 0;

  msleep(30);
 } while (--repeat > 0);

 return error;
}

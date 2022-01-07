
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elan_tp_data {int dummy; } ;


 int ETP_RETRY_COUNT ;
 int __elan_initialize (struct elan_tp_data*) ;
 int msleep (int) ;

__attribute__((used)) static int elan_initialize(struct elan_tp_data *data)
{
 int repeat = ETP_RETRY_COUNT;
 int error;

 do {
  error = __elan_initialize(data);
  if (!error)
   return 0;

  msleep(30);
 } while (--repeat > 0);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ value; int error_text; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ STATUS_NOERR ;
 scalar_t__ STATUS_SIZE ;
 scalar_t__ STATUS_WAKE_SUCCESSFUL ;
 int dev_err (struct device*,char*,scalar_t__,int ) ;
 TYPE_1__* error_list ;

__attribute__((used)) static int atmel_i2c_status(struct device *dev, u8 *status)
{
 size_t err_list_len = ARRAY_SIZE(error_list);
 int i;
 u8 err_id = status[1];

 if (*status != STATUS_SIZE)
  return 0;

 if (err_id == STATUS_WAKE_SUCCESSFUL || err_id == STATUS_NOERR)
  return 0;

 for (i = 0; i < err_list_len; i++)
  if (error_list[i].value == err_id)
   break;


 if (i != err_list_len) {
  dev_err(dev, "%02x: %s:\n", err_id, error_list[i].error_text);
  return err_id;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ghes {TYPE_2__* generic; } ;
typedef int sdei_event_callback ;
struct TYPE_3__ {scalar_t__ vector; } ;
struct TYPE_4__ {TYPE_1__ notify; } ;


 int CONFIG_ACPI_APEI_GHES ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IS_ENABLED (int ) ;
 int SDEI_EVENT_INFO_EV_PRIORITY ;
 scalar_t__ SDEI_EVENT_PRIORITY_CRITICAL ;
 int sdei_api_event_get_info (scalar_t__,int ,scalar_t__*) ;
 int sdei_event_enable (scalar_t__) ;
 int sdei_event_register (scalar_t__,int *,struct ghes*) ;

int sdei_register_ghes(struct ghes *ghes, sdei_event_callback *normal_cb,
         sdei_event_callback *critical_cb)
{
 int err;
 u64 result;
 u32 event_num;
 sdei_event_callback *cb;

 if (!IS_ENABLED(CONFIG_ACPI_APEI_GHES))
  return -EOPNOTSUPP;

 event_num = ghes->generic->notify.vector;
 if (event_num == 0) {




  return -EINVAL;
 }

 err = sdei_api_event_get_info(event_num, SDEI_EVENT_INFO_EV_PRIORITY,
          &result);
 if (err)
  return err;

 if (result == SDEI_EVENT_PRIORITY_CRITICAL)
  cb = critical_cb;
 else
  cb = normal_cb;

 err = sdei_event_register(event_num, cb, ghes);
 if (!err)
  err = sdei_event_enable(event_num);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ghes {TYPE_2__* generic; } ;
struct TYPE_3__ {int vector; } ;
struct TYPE_4__ {TYPE_1__ notify; } ;


 int CONFIG_ACPI_APEI_GHES ;
 int EINPROGRESS ;
 int EOPNOTSUPP ;
 int IS_ENABLED (int ) ;
 int might_sleep () ;
 int schedule () ;
 int sdei_event_disable (int ) ;
 int sdei_event_unregister (int ) ;

int sdei_unregister_ghes(struct ghes *ghes)
{
 int i;
 int err;
 u32 event_num = ghes->generic->notify.vector;

 might_sleep();

 if (!IS_ENABLED(CONFIG_ACPI_APEI_GHES))
  return -EOPNOTSUPP;





 err = sdei_event_disable(event_num);
 if (err)
  return err;

 for (i = 0; i < 3; i++) {
  err = sdei_event_unregister(event_num);
  if (err != -EINPROGRESS)
   break;

  schedule();
 }

 return err;
}

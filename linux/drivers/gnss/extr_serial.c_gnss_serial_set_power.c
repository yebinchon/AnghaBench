
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gnss_serial {TYPE_1__* ops; } ;
typedef enum gnss_serial_pm_state { ____Placeholder_gnss_serial_pm_state } gnss_serial_pm_state ;
struct TYPE_2__ {int (* set_power ) (struct gnss_serial*,int) ;} ;


 int stub1 (struct gnss_serial*,int) ;

__attribute__((used)) static int gnss_serial_set_power(struct gnss_serial *gserial,
     enum gnss_serial_pm_state state)
{
 if (!gserial->ops || !gserial->ops->set_power)
  return 0;

 return gserial->ops->set_power(gserial, state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_serial {int dummy; } ;
typedef enum gnss_serial_pm_state { ____Placeholder_gnss_serial_pm_state } gnss_serial_pm_state ;


 int EINVAL ;



 int ubx_set_active (struct gnss_serial*) ;
 int ubx_set_standby (struct gnss_serial*) ;

__attribute__((used)) static int ubx_set_power(struct gnss_serial *gserial,
    enum gnss_serial_pm_state state)
{
 switch (state) {
 case 130:
  return ubx_set_active(gserial);
 case 129:
 case 128:
  return ubx_set_standby(gserial);
 }

 return -EINVAL;
}

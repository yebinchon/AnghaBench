
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmc150_accel_trigger {int data; } ;


 int bmc150_accel_update_slope (int ) ;

__attribute__((used)) static int bmc150_accel_any_motion_setup(struct bmc150_accel_trigger *t,
      bool state)
{
 if (state)
  return bmc150_accel_update_slope(t->data);

 return 0;
}

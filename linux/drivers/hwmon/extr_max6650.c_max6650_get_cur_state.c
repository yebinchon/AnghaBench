
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct max6650_data* devdata; } ;
struct max6650_data {unsigned long cooling_dev_state; } ;



__attribute__((used)) static int max6650_get_cur_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 struct max6650_data *data = cdev->devdata;

 *state = data->cooling_dev_state;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vz89x_data {int is_valid; int (* xfer ) (struct vz89x_data*,int ) ;scalar_t__ last_update; struct vz89x_chip_data* chip; } ;
struct vz89x_chip_data {int (* valid ) (struct vz89x_data*) ;int cmd; } ;


 int EAGAIN ;
 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int stub1 (struct vz89x_data*,int ) ;
 int stub2 (struct vz89x_data*) ;
 int time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int vz89x_get_measurement(struct vz89x_data *data)
{
 const struct vz89x_chip_data *chip = data->chip;
 int ret;


 if (!time_after(jiffies, data->last_update + HZ))
  return data->is_valid ? 0 : -EAGAIN;

 data->is_valid = 0;
 data->last_update = jiffies;

 ret = data->xfer(data, chip->cmd);
 if (ret < 0)
  return ret;

 ret = chip->valid(data);
 if (ret)
  return -EAGAIN;

 data->is_valid = 1;

 return 0;
}

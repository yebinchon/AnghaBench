
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {size_t axis_map_x; size_t axis_map_y; size_t axis_map_z; scalar_t__ negate_z; scalar_t__ negate_y; scalar_t__ negate_x; } ;
struct kxtj9_data {int shift; int input_dev; TYPE_2__ pdata; TYPE_1__* client; } ;
typedef int s16 ;
struct TYPE_3__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int XOUT_L ;
 int dev_err (int *,char*) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int kxtj9_i2c_read (struct kxtj9_data*,int ,int *,int) ;
 int le16_to_cpu (int) ;

__attribute__((used)) static void kxtj9_report_acceleration_data(struct kxtj9_data *tj9)
{
 s16 acc_data[3];
 s16 x, y, z;
 int err;

 err = kxtj9_i2c_read(tj9, XOUT_L, (u8 *)acc_data, 6);
 if (err < 0)
  dev_err(&tj9->client->dev, "accelerometer data read failed\n");

 x = le16_to_cpu(acc_data[tj9->pdata.axis_map_x]);
 y = le16_to_cpu(acc_data[tj9->pdata.axis_map_y]);
 z = le16_to_cpu(acc_data[tj9->pdata.axis_map_z]);

 x >>= tj9->shift;
 y >>= tj9->shift;
 z >>= tj9->shift;

 input_report_abs(tj9->input_dev, ABS_X, tj9->pdata.negate_x ? -x : x);
 input_report_abs(tj9->input_dev, ABS_Y, tj9->pdata.negate_y ? -y : y);
 input_report_abs(tj9->input_dev, ABS_Z, tj9->pdata.negate_z ? -z : z);
 input_sync(tj9->input_dev);
}

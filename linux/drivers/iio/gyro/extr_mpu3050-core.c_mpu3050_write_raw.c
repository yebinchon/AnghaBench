
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int* calibration; int divisor; void* fullscale; int lpf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int scan_index; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 void* FS_1000_DPS ;
 void* FS_2000_DPS ;
 void* FS_250_DPS ;
 void* FS_500_DPS ;
 int IIO_ANGL_VEL ;



 int LPF_188_HZ ;
 int LPF_256_HZ_NOLPF ;
 int U16_MAX ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 int* mpu3050_fs_precision ;

__attribute__((used)) static int mpu3050_write_raw(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        int val, int val2, long mask)
{
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);



 unsigned int fs250 =
  DIV_ROUND_CLOSEST(mpu3050_fs_precision[0] * 1000000 * 2,
      U16_MAX);
 unsigned int fs500 =
  DIV_ROUND_CLOSEST(mpu3050_fs_precision[1] * 1000000 * 2,
      U16_MAX);
 unsigned int fs1000 =
  DIV_ROUND_CLOSEST(mpu3050_fs_precision[2] * 1000000 * 2,
      U16_MAX);
 unsigned int fs2000 =
  DIV_ROUND_CLOSEST(mpu3050_fs_precision[3] * 1000000 * 2,
      U16_MAX);

 switch (mask) {
 case 130:
  if (chan->type != IIO_ANGL_VEL)
   return -EINVAL;
  mpu3050->calibration[chan->scan_index-1] = val;
  return 0;
 case 129:




  if (val < 4 || val > 8000)
   return -EINVAL;





  if (val > 1000) {
   mpu3050->lpf = LPF_256_HZ_NOLPF;
   mpu3050->divisor = DIV_ROUND_CLOSEST(8000, val) - 1;
   return 0;
  }

  mpu3050->lpf = LPF_188_HZ;
  mpu3050->divisor = DIV_ROUND_CLOSEST(1000, val) - 1;
  return 0;
 case 128:
  if (chan->type != IIO_ANGL_VEL)
   return -EINVAL;
  if (val != 0) {
   mpu3050->fullscale = FS_2000_DPS;
   return 0;
  }






  if (val2 <= fs250 ||
      val2 < ((fs500 + fs250) / 2))
   mpu3050->fullscale = FS_250_DPS;
  else if (val2 <= fs500 ||
    val2 < ((fs1000 + fs500) / 2))
   mpu3050->fullscale = FS_500_DPS;
  else if (val2 <= fs1000 ||
    val2 < ((fs2000 + fs1000) / 2))
   mpu3050->fullscale = FS_1000_DPS;
  else

   mpu3050->fullscale = FS_2000_DPS;
  return 0;
 default:
  break;
 }

 return -EINVAL;
}

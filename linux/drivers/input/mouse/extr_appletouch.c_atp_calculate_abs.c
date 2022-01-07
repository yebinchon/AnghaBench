
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp {int* xy_acc; int* smooth; int* smooth_tmp; } ;


 int ATP_SCALE ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int threshold ;

__attribute__((used)) static int atp_calculate_abs(struct atp *dev, int offset, int nb_sensors,
        int fact, int *z, int *fingers)
{
 int i, pass;





 int *xy_sensors = dev->xy_acc + offset;


 int pcum = 0, psum = 0;
 int is_increasing = 0;

 *fingers = 0;

 for (i = 0; i < nb_sensors; i++) {
  if (xy_sensors[i] < threshold) {
   if (is_increasing)
    is_increasing = 0;
  } else if (i < 1 ||
      (!is_increasing && xy_sensors[i - 1] < xy_sensors[i])) {
   (*fingers)++;
   is_increasing = 1;
  } else if (i > 0 && (xy_sensors[i - 1] - xy_sensors[i] > threshold)) {
   is_increasing = 0;
  }
 }

 if (*fingers < 1)
  return 0;
 memset(dev->smooth, 0, 4 * sizeof(dev->smooth[0]));

 for (i = 0; i < nb_sensors; i++)
  dev->smooth[i + 4] = xy_sensors[i] << ATP_SCALE;
 memset(&dev->smooth[nb_sensors + 4], 0, 4 * sizeof(dev->smooth[0]));

 for (pass = 0; pass < 4; pass++) {

  dev->smooth_tmp[0] = (dev->smooth[0] + dev->smooth[1]) / 2;


  for (i = 1; i < nb_sensors + 7; i++)
   dev->smooth_tmp[i] = (dev->smooth[i - 1] +
           dev->smooth[i] * 2 +
           dev->smooth[i + 1]) / 4;


  dev->smooth_tmp[i] = (dev->smooth[i - 1] + dev->smooth[i]) / 2;

  memcpy(dev->smooth, dev->smooth_tmp, sizeof(dev->smooth));
 }

 for (i = 0; i < nb_sensors + 8; i++) {




  if ((dev->smooth[i] >> ATP_SCALE) > 0) {
   pcum += dev->smooth[i] * i;
   psum += dev->smooth[i];
  }
 }

 if (psum > 0) {
  *z = psum >> ATP_SCALE;
  return pcum * fact / psum;
 }

 return 0;
}

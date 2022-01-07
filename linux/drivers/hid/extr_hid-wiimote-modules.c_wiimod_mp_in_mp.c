
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int mp; } ;
typedef int __u8 ;
typedef int __u16 ;
typedef int __s32 ;


 int ABS_RX ;
 int ABS_RY ;
 int ABS_RZ ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void wiimod_mp_in_mp(struct wiimote_data *wdata, const __u8 *ext)
{
 __s32 x, y, z;
 x = ext[0];
 y = ext[1];
 z = ext[2];

 x |= (((__u16)ext[3]) << 6) & 0xff00;
 y |= (((__u16)ext[4]) << 6) & 0xff00;
 z |= (((__u16)ext[5]) << 6) & 0xff00;

 x -= 8192;
 y -= 8192;
 z -= 8192;

 if (!(ext[3] & 0x02))
  x = (x * 2000 * 9) / 440;
 else
  x *= 9;
 if (!(ext[4] & 0x02))
  y = (y * 2000 * 9) / 440;
 else
  y *= 9;
 if (!(ext[3] & 0x01))
  z = (z * 2000 * 9) / 440;
 else
  z *= 9;

 input_report_abs(wdata->mp, ABS_RX, x);
 input_report_abs(wdata->mp, ABS_RY, y);
 input_report_abs(wdata->mp, ABS_RZ, z);
 input_sync(wdata->mp);
}

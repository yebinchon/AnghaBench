
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int hdev; } ;
typedef int __u8 ;


 int WIIMOTE_MP_NONE ;
 int WIIMOTE_MP_PASSTHROUGH_CLASSIC ;
 int WIIMOTE_MP_PASSTHROUGH_NUNCHUK ;
 int WIIMOTE_MP_SINGLE ;
 int WIIMOTE_MP_UNKNOWN ;
 int hid_dbg (int ,char*,int*) ;
 int wiimote_cmd_read (struct wiimote_data*,int,int*,int) ;

__attribute__((used)) static __u8 wiimote_cmd_read_mp_mapped(struct wiimote_data *wdata)
{
 int ret;
 __u8 rmem[6];


 ret = wiimote_cmd_read(wdata, 0xa400fa, rmem, 6);
 if (ret != 6)
  return WIIMOTE_MP_NONE;

 hid_dbg(wdata->hdev, "mapped motion plus ID: %6phC\n", rmem);

 if (rmem[0] == 0xff && rmem[1] == 0xff && rmem[2] == 0xff &&
     rmem[3] == 0xff && rmem[4] == 0xff && rmem[5] == 0xff)
  return WIIMOTE_MP_NONE;

 if (rmem[4] == 0x04 && rmem[5] == 0x05)
  return WIIMOTE_MP_SINGLE;
 else if (rmem[4] == 0x05 && rmem[5] == 0x05)
  return WIIMOTE_MP_PASSTHROUGH_NUNCHUK;
 else if (rmem[4] == 0x07 && rmem[5] == 0x05)
  return WIIMOTE_MP_PASSTHROUGH_CLASSIC;

 return WIIMOTE_MP_UNKNOWN;
}

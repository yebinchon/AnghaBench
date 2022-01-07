
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int hdev; } ;
typedef int __u8 ;


 int hid_dbg (int ,char*,int*) ;
 int hid_info (int ,char*,int*) ;
 int wiimote_cmd_read (struct wiimote_data*,int,int*,int) ;

__attribute__((used)) static bool wiimote_cmd_read_mp(struct wiimote_data *wdata, __u8 *rmem)
{
 int ret;


 ret = wiimote_cmd_read(wdata, 0xa600fa, rmem, 6);
 if (ret != 6)
  return 0;

 hid_dbg(wdata->hdev, "motion plus ID: %6phC\n", rmem);

 if (rmem[5] == 0x05)
  return 1;

 hid_info(wdata->hdev, "unknown motion plus ID: %6phC\n", rmem);

 return 0;
}

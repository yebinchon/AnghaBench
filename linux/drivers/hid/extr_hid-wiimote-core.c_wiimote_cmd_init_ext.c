
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wmem ;
struct wiimote_data {int dummy; } ;
typedef int __u8 ;


 int wiimote_cmd_write (struct wiimote_data*,int,int*,int) ;

__attribute__((used)) static int wiimote_cmd_init_ext(struct wiimote_data *wdata)
{
 __u8 wmem;
 int ret;


 wmem = 0x55;
 ret = wiimote_cmd_write(wdata, 0xa400f0, &wmem, sizeof(wmem));
 if (ret)
  return ret;


 wmem = 0x0;
 ret = wiimote_cmd_write(wdata, 0xa400fb, &wmem, sizeof(wmem));
 if (ret)
  return ret;

 return 0;
}

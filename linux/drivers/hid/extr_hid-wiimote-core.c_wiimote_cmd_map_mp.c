
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wmem ;
struct wiimote_data {int dummy; } ;
typedef int __u8 ;






 int wiimote_cmd_write (struct wiimote_data*,int,int*,int) ;

__attribute__((used)) static bool wiimote_cmd_map_mp(struct wiimote_data *wdata, __u8 exttype)
{
 __u8 wmem;


 switch (exttype) {
 case 131:
 case 130:
 case 129:
  wmem = 0x07;
  break;
 case 128:
  wmem = 0x05;
  break;
 default:
  wmem = 0x04;
  break;
 }

 return wiimote_cmd_write(wdata, 0xa600fe, &wmem, sizeof(wmem));
}

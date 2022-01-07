
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acx565akm_panel {int dummy; } ;


 int MIPID_CMD_READ_CABC ;
 int acx565akm_read (struct acx565akm_panel*,int ,int*,int) ;

__attribute__((used)) static unsigned int acx565akm_get_hw_cabc_mode(struct acx565akm_panel *lcd)
{
 u8 cabc_ctrl;

 acx565akm_read(lcd, MIPID_CMD_READ_CABC, &cabc_ctrl, 1);
 return cabc_ctrl & 3;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct acx565akm_panel {unsigned int cabc_mode; int enabled; } ;


 int MIPID_CMD_READ_CABC ;
 int MIPID_CMD_WRITE_CABC ;
 int acx565akm_read (struct acx565akm_panel*,int ,int *,int) ;
 int acx565akm_write (struct acx565akm_panel*,int ,int *,int) ;

__attribute__((used)) static void acx565akm_set_cabc_mode(struct acx565akm_panel *lcd,
        unsigned int mode)
{
 u16 cabc_ctrl;

 lcd->cabc_mode = mode;
 if (!lcd->enabled)
  return;
 cabc_ctrl = 0;
 acx565akm_read(lcd, MIPID_CMD_READ_CABC, (u8 *)&cabc_ctrl, 1);
 cabc_ctrl &= ~3;
 cabc_ctrl |= (1 << 8) | (mode & 3);
 acx565akm_write(lcd, MIPID_CMD_WRITE_CABC, (u8 *)&cabc_ctrl, 2);
}

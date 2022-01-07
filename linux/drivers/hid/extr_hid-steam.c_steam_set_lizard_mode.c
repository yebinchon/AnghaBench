
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int dummy; } ;


 int STEAM_CMD_CLEAR_MAPPINGS ;
 int STEAM_CMD_DEFAULT_MAPPINGS ;
 int STEAM_CMD_DEFAULT_MOUSE ;
 int STEAM_REG_RPAD_MARGIN ;
 int STEAM_REG_RPAD_MODE ;
 int steam_send_report_byte (struct steam_device*,int ) ;
 int steam_write_registers (struct steam_device*,int ,int,int ,...) ;

__attribute__((used)) static void steam_set_lizard_mode(struct steam_device *steam, bool enable)
{
 if (enable) {

  steam_send_report_byte(steam, STEAM_CMD_DEFAULT_MAPPINGS);

  steam_send_report_byte(steam, STEAM_CMD_DEFAULT_MOUSE);
  steam_write_registers(steam,
   STEAM_REG_RPAD_MARGIN, 0x01,
   0);
 } else {

  steam_send_report_byte(steam, STEAM_CMD_CLEAR_MAPPINGS);
  steam_write_registers(steam,
   STEAM_REG_RPAD_MODE, 0x07,
   STEAM_REG_RPAD_MARGIN, 0x00,
   0);
 }
}

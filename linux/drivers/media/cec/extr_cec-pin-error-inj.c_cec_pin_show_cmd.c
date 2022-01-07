
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct seq_file {int dummy; } ;





 scalar_t__ CEC_ERROR_INJ_OP_ANY ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void cec_pin_show_cmd(struct seq_file *sf, u32 cmd, u8 mode)
{
 if (cmd == CEC_ERROR_INJ_OP_ANY)
  seq_puts(sf, "any,");
 else
  seq_printf(sf, "0x%02x,", cmd);
 switch (mode) {
 case 129:
  seq_puts(sf, "once ");
  break;
 case 130:
  seq_puts(sf, "always ");
  break;
 case 128:
  seq_puts(sf, "toggle ");
  break;
 default:
  seq_puts(sf, "off ");
  break;
 }
}

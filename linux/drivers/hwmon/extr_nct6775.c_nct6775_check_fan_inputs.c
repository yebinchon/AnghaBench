
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6775_data {int sioreg; int sio_reg_enable; int kind; int has_fan; int has_fan_min; int has_pwm; } ;


 int BIT (int) ;
 int DMI_BOARD_NAME ;
 int DMI_BOARD_VENDOR ;
 int NCT6775_LD_12 ;
 int NCT6775_LD_HWM ;
 int SIO_REG_ENABLE ;
 char* dmi_get_system_info (int ) ;
 int nct6106 ;
 int nct6116 ;
 int nct6775 ;
 int nct6776 ;







 int strcmp (char const*,char*) ;
 int superio_inb (int,int) ;
 int superio_outb (int,int,int) ;
 int superio_select (int,int ) ;

__attribute__((used)) static void
nct6775_check_fan_inputs(struct nct6775_data *data)
{
 bool fan3pin = 0, fan4pin = 0, fan4min = 0;
 bool fan5pin = 0, fan6pin = 0, fan7pin = 0;
 bool pwm3pin = 0, pwm4pin = 0, pwm5pin = 0;
 bool pwm6pin = 0, pwm7pin = 0;
 int sioreg = data->sioreg;


 superio_select(sioreg, NCT6775_LD_HWM);
 data->sio_reg_enable = superio_inb(sioreg, SIO_REG_ENABLE);


 if (data->kind == nct6775) {
  int cr2c = superio_inb(sioreg, 0x2c);

  fan3pin = cr2c & BIT(6);
  pwm3pin = cr2c & BIT(7);


  fan4pin = !(superio_inb(sioreg, 0x2A) & 0x80);
 } else if (data->kind == nct6776) {
  bool gpok = superio_inb(sioreg, 0x27) & 0x80;
  const char *board_vendor, *board_name;

  board_vendor = dmi_get_system_info(DMI_BOARD_VENDOR);
  board_name = dmi_get_system_info(DMI_BOARD_NAME);

  if (board_name && board_vendor &&
      !strcmp(board_vendor, "ASRock")) {





   if (!strcmp(board_name, "Z77 Pro4-M")) {
    if ((data->sio_reg_enable & 0xe0) != 0xe0) {
     data->sio_reg_enable |= 0xe0;
     superio_outb(sioreg, SIO_REG_ENABLE,
           data->sio_reg_enable);
    }
   }
  }

  if (data->sio_reg_enable & 0x80)
   fan3pin = gpok;
  else
   fan3pin = !(superio_inb(sioreg, 0x24) & 0x40);

  if (data->sio_reg_enable & 0x40)
   fan4pin = gpok;
  else
   fan4pin = superio_inb(sioreg, 0x1C) & 0x01;

  if (data->sio_reg_enable & 0x20)
   fan5pin = gpok;
  else
   fan5pin = superio_inb(sioreg, 0x1C) & 0x02;

  fan4min = fan4pin;
  pwm3pin = fan3pin;
 } else if (data->kind == nct6106) {
  int cr24 = superio_inb(sioreg, 0x24);

  fan3pin = !(cr24 & 0x80);
  pwm3pin = cr24 & 0x08;
 } else if (data->kind == nct6116) {
  int cr1a = superio_inb(sioreg, 0x1a);
  int cr1b = superio_inb(sioreg, 0x1b);
  int cr24 = superio_inb(sioreg, 0x24);
  int cr2a = superio_inb(sioreg, 0x2a);
  int cr2b = superio_inb(sioreg, 0x2b);
  int cr2f = superio_inb(sioreg, 0x2f);

  fan3pin = !(cr2b & 0x10);
  fan4pin = (cr2b & 0x80) ||
   (!(cr2f & 0x10) && (cr1a & 0x04));
  fan5pin = (cr2b & 0x80) ||
   (!(cr1b & 0x03) && (cr2a & 0x02));

  pwm3pin = fan3pin && (cr24 & 0x08);
  pwm4pin = fan4pin;
  pwm5pin = fan5pin;
 } else {




  int cr1a = superio_inb(sioreg, 0x1a);
  int cr1b = superio_inb(sioreg, 0x1b);
  int cr1c = superio_inb(sioreg, 0x1c);
  int cr1d = superio_inb(sioreg, 0x1d);
  int cr2a = superio_inb(sioreg, 0x2a);
  int cr2b = superio_inb(sioreg, 0x2b);
  int cr2d = superio_inb(sioreg, 0x2d);
  int cr2f = superio_inb(sioreg, 0x2f);
  bool dsw_en = cr2f & BIT(3);
  bool ddr4_en = cr2f & BIT(4);
  int cre0;
  int creb;
  int cred;

  superio_select(sioreg, NCT6775_LD_12);
  cre0 = superio_inb(sioreg, 0xe0);
  creb = superio_inb(sioreg, 0xeb);
  cred = superio_inb(sioreg, 0xed);

  fan3pin = !(cr1c & BIT(5));
  fan4pin = !(cr1c & BIT(6));
  fan5pin = !(cr1c & BIT(7));

  pwm3pin = !(cr1c & BIT(0));
  pwm4pin = !(cr1c & BIT(1));
  pwm5pin = !(cr1c & BIT(2));

  switch (data->kind) {
  case 134:
   fan6pin = cr2d & BIT(1);
   pwm6pin = cr2d & BIT(0);
   break;
  case 133:
   fan6pin = !dsw_en && (cr2d & BIT(1));
   pwm6pin = !dsw_en && (cr2d & BIT(0));
   break;
  case 132:
   fan5pin |= cr1b & BIT(5);
   fan5pin |= creb & BIT(5);

   fan6pin = !dsw_en && (cr2d & BIT(1));
   fan6pin |= creb & BIT(3);

   pwm5pin |= cr2d & BIT(7);
   pwm5pin |= (creb & BIT(4)) && !(cr2a & BIT(0));

   pwm6pin = !dsw_en && (cr2d & BIT(0));
   pwm6pin |= creb & BIT(2);
   break;
  case 131:
   fan5pin |= cr1b & BIT(5);
   fan5pin |= creb & BIT(5);

   fan6pin = (cr2a & BIT(4)) &&
     (!dsw_en || (cred & BIT(4)));
   fan6pin |= creb & BIT(3);

   pwm5pin |= cr2d & BIT(7);
   pwm5pin |= (creb & BIT(4)) && !(cr2a & BIT(0));

   pwm6pin = (cr2a & BIT(3)) && (cred & BIT(2));
   pwm6pin |= creb & BIT(2);
   break;
  case 130:
   fan5pin |= cr1b & BIT(5);
   fan5pin |= (cre0 & BIT(3)) && !(cr1b & BIT(0));
   fan5pin |= creb & BIT(5);

   fan6pin = (cr2a & BIT(4)) &&
     (!dsw_en || (cred & BIT(4)));
   fan6pin |= creb & BIT(3);

   fan7pin = !(cr2b & BIT(2));

   pwm5pin |= cr2d & BIT(7);
   pwm5pin |= (cre0 & BIT(4)) && !(cr1b & BIT(0));
   pwm5pin |= (creb & BIT(4)) && !(cr2a & BIT(0));

   pwm6pin = (cr2a & BIT(3)) && (cred & BIT(2));
   pwm6pin |= creb & BIT(2);

   pwm7pin = !(cr1d & (BIT(2) | BIT(3)));
   break;
  case 129:
   fan5pin |= !ddr4_en && (cr1b & BIT(5));
   fan5pin |= creb & BIT(5);

   fan6pin = cr2a & BIT(4);
   fan6pin |= creb & BIT(3);

   fan7pin = cr1a & BIT(1);

   pwm5pin |= (creb & BIT(4)) && !(cr2a & BIT(0));
   pwm5pin |= !ddr4_en && (cr2d & BIT(7));

   pwm6pin = creb & BIT(2);
   pwm6pin |= cred & BIT(2);

   pwm7pin = cr1d & BIT(4);
   break;
  case 128:
   fan6pin = !(cr1b & BIT(0)) && (cre0 & BIT(3));
   fan6pin |= cr2a & BIT(4);
   fan6pin |= creb & BIT(5);

   fan7pin = cr1b & BIT(5);
   fan7pin |= !(cr2b & BIT(2));
   fan7pin |= creb & BIT(3);

   pwm6pin = !(cr1b & BIT(0)) && (cre0 & BIT(4));
   pwm6pin |= !(cred & BIT(2)) && (cr2a & BIT(3));
   pwm6pin |= (creb & BIT(4)) && !(cr2a & BIT(0));

   pwm7pin = !(cr1d & (BIT(2) | BIT(3)));
   pwm7pin |= cr2d & BIT(7);
   pwm7pin |= creb & BIT(2);
   break;
  default:
   break;
  }

  fan4min = fan4pin;
 }


 data->has_fan = 0x03 | (fan3pin << 2) | (fan4pin << 3) |
  (fan5pin << 4) | (fan6pin << 5) | (fan7pin << 6);
 data->has_fan_min = 0x03 | (fan3pin << 2) | (fan4min << 3) |
  (fan5pin << 4) | (fan6pin << 5) | (fan7pin << 6);
 data->has_pwm = 0x03 | (pwm3pin << 2) | (pwm4pin << 3) |
  (pwm5pin << 4) | (pwm6pin << 5) | (pwm7pin << 6);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_sio_data {scalar_t__ kind; int sioreg; } ;
struct w83627ehf_data {int has_fan; int has_fan_min; } ;


 int SIO_REG_ENABLE ;
 int W83627EHF_LD_HWM ;
 int W83627EHF_REG_FANDIV1 ;
 scalar_t__ nct6775 ;
 scalar_t__ nct6776 ;
 int superio_inb (int ,int) ;
 int superio_select (int ,int ) ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 scalar_t__ w83627uhg ;
 scalar_t__ w83667hg ;
 scalar_t__ w83667hg_b ;

__attribute__((used)) static void
w83627ehf_check_fan_inputs(const struct w83627ehf_sio_data *sio_data,
      struct w83627ehf_data *data)
{
 int fan3pin, fan4pin, fan4min, fan5pin, regval;


 if (sio_data->kind == w83627uhg) {
  data->has_fan = 0x03;
  data->has_fan_min = 0x03;
  return;
 }


 if (sio_data->kind == nct6775) {

  fan3pin = 1;
  fan4pin = !(superio_inb(sio_data->sioreg, 0x2A) & 0x80);
  fan4min = 0;
  fan5pin = 0;
 } else if (sio_data->kind == nct6776) {
  bool gpok = superio_inb(sio_data->sioreg, 0x27) & 0x80;

  superio_select(sio_data->sioreg, W83627EHF_LD_HWM);
  regval = superio_inb(sio_data->sioreg, SIO_REG_ENABLE);

  if (regval & 0x80)
   fan3pin = gpok;
  else
   fan3pin = !(superio_inb(sio_data->sioreg, 0x24) & 0x40);

  if (regval & 0x40)
   fan4pin = gpok;
  else
   fan4pin = !!(superio_inb(sio_data->sioreg, 0x1C) & 0x01);

  if (regval & 0x20)
   fan5pin = gpok;
  else
   fan5pin = !!(superio_inb(sio_data->sioreg, 0x1C) & 0x02);

  fan4min = fan4pin;
 } else if (sio_data->kind == w83667hg || sio_data->kind == w83667hg_b) {
  fan3pin = 1;
  fan4pin = superio_inb(sio_data->sioreg, 0x27) & 0x40;
  fan5pin = superio_inb(sio_data->sioreg, 0x27) & 0x20;
  fan4min = fan4pin;
 } else {
  fan3pin = 1;
  fan4pin = !(superio_inb(sio_data->sioreg, 0x29) & 0x06);
  fan5pin = !(superio_inb(sio_data->sioreg, 0x24) & 0x02);
  fan4min = fan4pin;
 }

 data->has_fan = data->has_fan_min = 0x03;
 data->has_fan |= (fan3pin << 2);
 data->has_fan_min |= (fan3pin << 2);

 if (sio_data->kind == nct6775 || sio_data->kind == nct6776) {




  data->has_fan |= (fan4pin << 3) | (fan5pin << 4);
  data->has_fan_min |= (fan4min << 3) | (fan5pin << 4);
 } else {







  regval = w83627ehf_read_value(data, W83627EHF_REG_FANDIV1);
  if ((regval & (1 << 2)) && fan4pin) {
   data->has_fan |= (1 << 3);
   data->has_fan_min |= (1 << 3);
  }
  if (!(regval & (1 << 1)) && fan5pin) {
   data->has_fan |= (1 << 4);
   data->has_fan_min |= (1 << 4);
  }
 }
}

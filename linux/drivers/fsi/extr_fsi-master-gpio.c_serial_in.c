
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct fsi_master_gpio {int dummy; } ;
struct fsi_gpio_msg {int msg; int bits; } ;


 scalar_t__ sda_clock_in (struct fsi_master_gpio*) ;
 int set_sda_input (struct fsi_master_gpio*) ;
 int trace_fsi_master_gpio_in (struct fsi_master_gpio*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void serial_in(struct fsi_master_gpio *master, struct fsi_gpio_msg *msg,
   uint8_t num_bits)
{
 uint8_t bit, in_bit;

 set_sda_input(master);

 for (bit = 0; bit < num_bits; bit++) {
  in_bit = sda_clock_in(master);
  msg->msg <<= 1;
  msg->msg |= ~in_bit & 0x1;
 }
 msg->bits += num_bits;

 trace_fsi_master_gpio_in(master, num_bits, msg->msg);
}

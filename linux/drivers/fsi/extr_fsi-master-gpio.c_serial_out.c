
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct fsi_master_gpio {int dev; } ;
struct fsi_gpio_msg {int msg; int bits; } ;


 int clock_toggle (struct fsi_master_gpio*,int) ;
 int dev_warn (int ,char*) ;
 int sda_out (struct fsi_master_gpio*,int) ;
 int set_sda_output (struct fsi_master_gpio*,int ) ;
 int trace_fsi_master_gpio_out (struct fsi_master_gpio*,int,int) ;

__attribute__((used)) static void serial_out(struct fsi_master_gpio *master,
   const struct fsi_gpio_msg *cmd)
{
 uint8_t bit;
 uint64_t msg = ~cmd->msg;
 uint64_t sda_mask = 0x1ULL << (cmd->bits - 1);
 uint64_t last_bit = ~0;
 int next_bit;

 trace_fsi_master_gpio_out(master, cmd->bits, cmd->msg);

 if (!cmd->bits) {
  dev_warn(master->dev, "trying to output 0 bits\n");
  return;
 }
 set_sda_output(master, 0);


 sda_out(master, 0);
 clock_toggle(master, 1);


 for (bit = 0; bit < cmd->bits; bit++) {
  next_bit = (msg & sda_mask) >> (cmd->bits - 1);
  if (last_bit ^ next_bit) {
   sda_out(master, next_bit);
   last_bit = next_bit;
  }
  clock_toggle(master, 1);
  msg <<= 1;
 }
}

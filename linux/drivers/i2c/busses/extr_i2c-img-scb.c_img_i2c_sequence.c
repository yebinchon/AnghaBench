
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct img_i2c {int at_slave_event; int at_t_done; size_t at_cur_cmd; unsigned int line_status; int* seq; } ;


 size_t ARRAY_SIZE (unsigned int const*) ;





 int INT_SLAVE_EVENT ;
 int INT_TRANSACTION_DONE ;
 unsigned int ISR_COMPLETE (int ) ;
 unsigned int LINESTAT_ABORT_DET ;





 int SCB_OVERRIDE_REG ;
 int img_i2c_atomic_op (struct img_i2c*,int,int) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static unsigned int img_i2c_sequence(struct img_i2c *i2c, u32 int_status)
{
 static const unsigned int continue_bits[] = {
  [136] = 129,
  [137] = 131,
  [134] = 132 | 130,
  [133] = 131,
  [135] = 128,
 };
 int next_cmd = -1;
 u8 next_data = 0x00;

 if (int_status & INT_SLAVE_EVENT)
  i2c->at_slave_event = 1;
 if (int_status & INT_TRANSACTION_DONE)
  i2c->at_t_done = 1;

 if (!i2c->at_slave_event || !i2c->at_t_done)
  return 0;


 if (i2c->at_cur_cmd >= 0 &&
     i2c->at_cur_cmd < ARRAY_SIZE(continue_bits)) {
  unsigned int cont_bits = continue_bits[i2c->at_cur_cmd];

  if (cont_bits) {
   cont_bits |= LINESTAT_ABORT_DET;
   if (!(i2c->line_status & cont_bits))
    return 0;
  }
 }


 next_cmd = *i2c->seq;

 if (!next_cmd) {
  img_i2c_writel(i2c, SCB_OVERRIDE_REG, 0);
  return ISR_COMPLETE(0);
 }

 if (next_cmd == 137) {
  ++i2c->seq;
  next_data = *i2c->seq;
 }
 ++i2c->seq;
 img_i2c_atomic_op(i2c, next_cmd, next_data);

 return 0;
}

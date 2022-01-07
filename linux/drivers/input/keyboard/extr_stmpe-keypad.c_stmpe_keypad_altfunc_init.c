
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct stmpe_keypad_variant {unsigned int col_gpios; unsigned int row_gpios; int max_cols; int max_rows; scalar_t__ set_pullup; } ;
struct stmpe_keypad {int cols; int rows; struct stmpe* stmpe; struct stmpe_keypad_variant* variant; } ;
struct stmpe {unsigned int* regs; } ;


 int STMPE_BLOCK_KEYPAD ;
 size_t STMPE_IDX_GPPUR_LSB ;
 int __ffs (unsigned int) ;
 int stmpe_reg_read (struct stmpe*,unsigned int) ;
 int stmpe_reg_write (struct stmpe*,unsigned int,unsigned int) ;
 int stmpe_set_altfunc (struct stmpe*,unsigned int,int ) ;

__attribute__((used)) static int stmpe_keypad_altfunc_init(struct stmpe_keypad *keypad)
{
 const struct stmpe_keypad_variant *variant = keypad->variant;
 unsigned int col_gpios = variant->col_gpios;
 unsigned int row_gpios = variant->row_gpios;
 struct stmpe *stmpe = keypad->stmpe;
 u8 pureg = stmpe->regs[STMPE_IDX_GPPUR_LSB];
 unsigned int pins = 0;
 unsigned int pu_pins = 0;
 int ret;
 int i;
 for (i = 0; i < variant->max_cols; i++) {
  int num = __ffs(col_gpios);

  if (keypad->cols & (1 << i)) {
   pins |= 1 << num;
   pu_pins |= 1 << num;
  }

  col_gpios &= ~(1 << num);
 }

 for (i = 0; i < variant->max_rows; i++) {
  int num = __ffs(row_gpios);

  if (keypad->rows & (1 << i))
   pins |= 1 << num;

  row_gpios &= ~(1 << num);
 }

 ret = stmpe_set_altfunc(stmpe, pins, STMPE_BLOCK_KEYPAD);
 if (ret)
  return ret;







 if (variant->set_pullup) {
  u8 val;

  ret = stmpe_reg_read(stmpe, pureg);
  if (ret)
   return ret;


  val = ret & ~pu_pins;
  val |= pu_pins;

  ret = stmpe_reg_write(stmpe, pureg, val);
 }

 return 0;
}

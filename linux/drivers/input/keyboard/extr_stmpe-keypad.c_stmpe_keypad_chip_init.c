
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_keypad_variant {int max_rows; } ;
struct stmpe_keypad {int debounce_ms; int scan_count; int cols; int rows; struct stmpe* stmpe; struct stmpe_keypad_variant* variant; } ;
struct stmpe {int dummy; } ;


 int EINVAL ;
 int STMPE_BLOCK_KEYPAD ;
 int STMPE_KEYPAD_MAX_DEBOUNCE ;
 int STMPE_KEYPAD_MAX_SCAN_COUNT ;
 int STMPE_KPC_COL ;
 int STMPE_KPC_CTRL_LSB ;
 int STMPE_KPC_CTRL_LSB_DEBOUNCE ;
 int STMPE_KPC_CTRL_LSB_SCAN ;
 int STMPE_KPC_CTRL_MSB ;
 int STMPE_KPC_CTRL_MSB_SCAN_COUNT ;
 int STMPE_KPC_ROW_LSB ;
 int STMPE_KPC_ROW_MSB ;
 int STMPE_KPC_ROW_MSB_ROWS ;
 int stmpe_enable (struct stmpe*,int ) ;
 int stmpe_keypad_altfunc_init (struct stmpe_keypad*) ;
 int stmpe_reg_write (struct stmpe*,int ,int) ;
 int stmpe_set_bits (struct stmpe*,int ,int,int) ;

__attribute__((used)) static int stmpe_keypad_chip_init(struct stmpe_keypad *keypad)
{
 const struct stmpe_keypad_variant *variant = keypad->variant;
 struct stmpe *stmpe = keypad->stmpe;
 int ret;

 if (keypad->debounce_ms > STMPE_KEYPAD_MAX_DEBOUNCE)
  return -EINVAL;

 if (keypad->scan_count > STMPE_KEYPAD_MAX_SCAN_COUNT)
  return -EINVAL;

 ret = stmpe_enable(stmpe, STMPE_BLOCK_KEYPAD);
 if (ret < 0)
  return ret;

 ret = stmpe_keypad_altfunc_init(keypad);
 if (ret < 0)
  return ret;

 ret = stmpe_reg_write(stmpe, STMPE_KPC_COL, keypad->cols);
 if (ret < 0)
  return ret;

 ret = stmpe_reg_write(stmpe, STMPE_KPC_ROW_LSB, keypad->rows);
 if (ret < 0)
  return ret;

 if (variant->max_rows > 8) {
  ret = stmpe_set_bits(stmpe, STMPE_KPC_ROW_MSB,
         STMPE_KPC_ROW_MSB_ROWS,
         keypad->rows >> 8);
  if (ret < 0)
   return ret;
 }

 ret = stmpe_set_bits(stmpe, STMPE_KPC_CTRL_MSB,
        STMPE_KPC_CTRL_MSB_SCAN_COUNT,
        keypad->scan_count << 4);
 if (ret < 0)
  return ret;

 return stmpe_set_bits(stmpe, STMPE_KPC_CTRL_LSB,
         STMPE_KPC_CTRL_LSB_SCAN |
         STMPE_KPC_CTRL_LSB_DEBOUNCE,
         STMPE_KPC_CTRL_LSB_SCAN |
         (keypad->debounce_ms << 1));
}

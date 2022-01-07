
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct imx_keypad {int cols_en_mask; unsigned short* matrix_unstable_state; scalar_t__ stable_count; unsigned short* matrix_stable_state; scalar_t__ mmio_base; int check_matrix_timer; } ;
typedef int matrix_volatile_state ;


 scalar_t__ IMX_KEYPAD_SCANS_FOR_STABILITY ;
 unsigned short KBD_STAT_KDIE ;
 unsigned short KBD_STAT_KDSC ;
 unsigned short KBD_STAT_KPKD ;
 unsigned short KBD_STAT_KPKR ;
 unsigned short KBD_STAT_KRIE ;
 unsigned short KBD_STAT_KRSS ;
 scalar_t__ KPSR ;
 int MAX_MATRIX_KEY_COLS ;
 int check_matrix_timer ;
 struct imx_keypad* from_timer (int ,struct timer_list*,int ) ;
 int imx_keypad_fire_events (struct imx_keypad*,unsigned short*) ;
 int imx_keypad_scan_matrix (struct imx_keypad*,unsigned short*) ;
 scalar_t__ jiffies ;
 struct imx_keypad* keypad ;
 int memcpy (unsigned short*,unsigned short*,int) ;
 int memset (unsigned short*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 unsigned short readw (scalar_t__) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static void imx_keypad_check_for_events(struct timer_list *t)
{
 struct imx_keypad *keypad = from_timer(keypad, t, check_matrix_timer);
 unsigned short matrix_volatile_state[MAX_MATRIX_KEY_COLS];
 unsigned short reg_val;
 bool state_changed, is_zero_matrix;
 int i;

 memset(matrix_volatile_state, 0, sizeof(matrix_volatile_state));

 imx_keypad_scan_matrix(keypad, matrix_volatile_state);

 state_changed = 0;
 for (i = 0; i < MAX_MATRIX_KEY_COLS; i++) {
  if ((keypad->cols_en_mask & (1 << i)) == 0)
   continue;

  if (keypad->matrix_unstable_state[i] ^ matrix_volatile_state[i]) {
   state_changed = 1;
   break;
  }
 }
 if (state_changed) {
  memcpy(keypad->matrix_unstable_state, matrix_volatile_state,
   sizeof(matrix_volatile_state));
  keypad->stable_count = 0;
 } else
  keypad->stable_count++;





 if (keypad->stable_count < IMX_KEYPAD_SCANS_FOR_STABILITY) {
  mod_timer(&keypad->check_matrix_timer,
     jiffies + msecs_to_jiffies(10));
  return;
 }







 if (keypad->stable_count == IMX_KEYPAD_SCANS_FOR_STABILITY) {
  imx_keypad_fire_events(keypad, matrix_volatile_state);

  memcpy(keypad->matrix_stable_state, matrix_volatile_state,
   sizeof(matrix_volatile_state));
 }

 is_zero_matrix = 1;
 for (i = 0; i < MAX_MATRIX_KEY_COLS; i++) {
  if (matrix_volatile_state[i] != 0) {
   is_zero_matrix = 0;
   break;
  }
 }


 if (is_zero_matrix) {





  reg_val = readw(keypad->mmio_base + KPSR);
  reg_val |= KBD_STAT_KPKD | KBD_STAT_KDSC;
  writew(reg_val, keypad->mmio_base + KPSR);

  reg_val = readw(keypad->mmio_base + KPSR);
  reg_val |= KBD_STAT_KDIE;
  reg_val &= ~KBD_STAT_KRIE;
  writew(reg_val, keypad->mmio_base + KPSR);
 } else {






  mod_timer(&keypad->check_matrix_timer,
     jiffies + msecs_to_jiffies(60));

  reg_val = readw(keypad->mmio_base + KPSR);
  reg_val |= KBD_STAT_KPKR | KBD_STAT_KRSS;
  writew(reg_val, keypad->mmio_base + KPSR);

  reg_val = readw(keypad->mmio_base + KPSR);
  reg_val |= KBD_STAT_KRIE;
  reg_val &= ~KBD_STAT_KDIE;
  writew(reg_val, keypad->mmio_base + KPSR);
 }
}

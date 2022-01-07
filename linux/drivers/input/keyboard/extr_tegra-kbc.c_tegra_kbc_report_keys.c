
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct tegra_kbc {unsigned short* keycode; unsigned int num_pressed_keys; int current_keys; int idev; scalar_t__ max_keys; scalar_t__ use_ghost_filter; scalar_t__ use_fn_map; scalar_t__ mmio; } ;


 scalar_t__ KBC_KP_ENT0_0 ;
 int KBC_MAX_KPENT ;
 unsigned char KBC_ROW_SHIFT ;
 unsigned short KEY_FN ;
 unsigned char MATRIX_SCAN_CODE (unsigned int,unsigned int,unsigned char) ;
 int input_sync (int ) ;
 int memcpy (int ,unsigned short*,int) ;
 int readl (scalar_t__) ;
 int tegra_kbc_report_pressed_keys (int ,unsigned char*,unsigned short*,unsigned int) ;
 int tegra_kbc_report_released_keys (int ,int ,unsigned int,unsigned short*,unsigned int) ;

__attribute__((used)) static void tegra_kbc_report_keys(struct tegra_kbc *kbc)
{
 unsigned char scancodes[KBC_MAX_KPENT];
 unsigned short keycodes[KBC_MAX_KPENT];
 u32 val = 0;
 unsigned int i;
 unsigned int num_down = 0;
 bool fn_keypress = 0;
 bool key_in_same_row = 0;
 bool key_in_same_col = 0;

 for (i = 0; i < KBC_MAX_KPENT; i++) {
  if ((i % 4) == 0)
   val = readl(kbc->mmio + KBC_KP_ENT0_0 + i);

  if (val & 0x80) {
   unsigned int col = val & 0x07;
   unsigned int row = (val >> 3) & 0x0f;
   unsigned char scancode =
    MATRIX_SCAN_CODE(row, col, KBC_ROW_SHIFT);

   scancodes[num_down] = scancode;
   keycodes[num_down] = kbc->keycode[scancode];

   if ((keycodes[num_down] == KEY_FN) && kbc->use_fn_map)
    fn_keypress = 1;
   else
    num_down++;
  }

  val >>= 8;
 }







 if (kbc->use_ghost_filter && num_down >= 3) {
  for (i = 0; i < num_down; i++) {
   unsigned int j;
   u8 curr_col = scancodes[i] & 0x07;
   u8 curr_row = scancodes[i] >> KBC_ROW_SHIFT;





   for (j = i + 1; j < num_down; j++) {
    u8 col = scancodes[j] & 0x07;
    u8 row = scancodes[j] >> KBC_ROW_SHIFT;

    if (col == curr_col)
     key_in_same_col = 1;
    if (row == curr_row)
     key_in_same_row = 1;
   }
  }
 }





 if (fn_keypress) {
  for (i = 0; i < num_down; i++) {
   scancodes[i] += kbc->max_keys;
   keycodes[i] = kbc->keycode[scancodes[i]];
  }
 }


 if (key_in_same_col && key_in_same_row)
  return;

 tegra_kbc_report_released_keys(kbc->idev,
           kbc->current_keys, kbc->num_pressed_keys,
           keycodes, num_down);
 tegra_kbc_report_pressed_keys(kbc->idev, scancodes, keycodes, num_down);
 input_sync(kbc->idev);

 memcpy(kbc->current_keys, keycodes, sizeof(kbc->current_keys));
 kbc->num_pressed_keys = num_down;
}

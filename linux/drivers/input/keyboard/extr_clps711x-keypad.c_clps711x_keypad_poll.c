
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct input_polled_dev {TYPE_1__* input; struct clps711x_keypad_data* private; } ;
struct clps711x_keypad_data {int row_count; int syscon; int row_shift; struct clps711x_gpio_data* gpio_data; } ;
struct clps711x_gpio_data {int last_state; int desc; } ;
struct TYPE_4__ {unsigned short* keycode; } ;


 int CLPS711X_KEYPAD_COL_COUNT ;
 int EV_MSC ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int MSC_SCAN ;
 int SYSCON1_KBDSCAN (int) ;
 int SYSCON1_KBDSCAN_MASK ;
 int SYSCON_OFFSET ;
 int clear_bit (int,int ) ;
 int cond_resched () ;
 int gpiod_get_value_cansleep (int ) ;
 int input_event (TYPE_1__*,int ,int ,int) ;
 int input_report_key (TYPE_1__*,unsigned short const,int) ;
 int input_sync (TYPE_1__*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void clps711x_keypad_poll(struct input_polled_dev *dev)
{
 const unsigned short *keycodes = dev->input->keycode;
 struct clps711x_keypad_data *priv = dev->private;
 bool sync = 0;
 int col, row;

 for (col = 0; col < CLPS711X_KEYPAD_COL_COUNT; col++) {

  regmap_update_bits(priv->syscon, SYSCON_OFFSET,
       SYSCON1_KBDSCAN_MASK,
       SYSCON1_KBDSCAN(8 + col));


  for (row = 0; row < priv->row_count; row++) {
   struct clps711x_gpio_data *data = &priv->gpio_data[row];
   bool state, state1;


   do {
    state = gpiod_get_value_cansleep(data->desc);
    cond_resched();
    state1 = gpiod_get_value_cansleep(data->desc);
   } while (state != state1);

   if (test_bit(col, data->last_state) != state) {
    int code = MATRIX_SCAN_CODE(row, col,
           priv->row_shift);

    if (state) {
     set_bit(col, data->last_state);
     input_event(dev->input, EV_MSC,
          MSC_SCAN, code);
    } else {
     clear_bit(col, data->last_state);
    }

    if (keycodes[code])
     input_report_key(dev->input,
        keycodes[code], state);
    sync = 1;
   }
  }


  regmap_update_bits(priv->syscon, SYSCON_OFFSET,
       SYSCON1_KBDSCAN_MASK, SYSCON1_KBDSCAN(1));
 }

 if (sync)
  input_sync(dev->input);
}

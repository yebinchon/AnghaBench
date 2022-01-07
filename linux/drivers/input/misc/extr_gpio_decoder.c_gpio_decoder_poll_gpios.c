
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int input; struct gpio_decoder* private; } ;
struct gpio_decoder {int last_stable; int axis; } ;


 int gpio_decoder_get_gpios_state (struct gpio_decoder*) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void gpio_decoder_poll_gpios(struct input_polled_dev *poll_dev)
{
 struct gpio_decoder *decoder = poll_dev->private;
 int state;

 state = gpio_decoder_get_gpios_state(decoder);
 if (state >= 0 && state != decoder->last_stable) {
  input_report_abs(poll_dev->input, decoder->axis, state);
  input_sync(poll_dev->input);
  decoder->last_stable = state;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_adc_state {int ts_input; } ;


 int input_unregister_device (int ) ;

__attribute__((used)) static void at91_ts_unregister(struct at91_adc_state *st)
{
 input_unregister_device(st->ts_input);
}

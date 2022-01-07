
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dib0090_state {int wbdmux; int bias; int adc_diff; TYPE_1__* config; int calibrate; int temperature; } ;
typedef int s16 ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_2__ {int analog_output; } ;






 int TEMP_CAL ;
 void* dib0090_get_slow_adc_val (struct dib0090_state*) ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int ) ;

__attribute__((used)) static int dib0090_get_temperature(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
 int ret = 15;
 s16 val;

 switch (*tune_state) {
 case 131:
  state->wbdmux = dib0090_read_reg(state, 0x10);
  dib0090_write_reg(state, 0x10, (state->wbdmux & ~(0xff << 3)) | (0x8 << 3));

  state->bias = dib0090_read_reg(state, 0x13);
  dib0090_write_reg(state, 0x13, state->bias | (0x3 << 8));

  *tune_state = 130;

  break;

 case 130:
  state->adc_diff = dib0090_get_slow_adc_val(state);
  dib0090_write_reg(state, 0x13, (state->bias & ~(0x3 << 8)) | (0x2 << 8));
  *tune_state = 129;
  break;

 case 129:
  val = dib0090_get_slow_adc_val(state);
  state->temperature = ((s16) ((val - state->adc_diff) * 180) >> 8) + 55;

  dprintk("temperature: %d C\n", state->temperature - 30);

  *tune_state = 128;
  break;

 case 128:
  dib0090_write_reg(state, 0x13, state->bias);
  dib0090_write_reg(state, 0x10, state->wbdmux);

  *tune_state = 131;
  state->calibrate &= ~TEMP_CAL;
  if (state->config->analog_output == 0)
   dib0090_write_reg(state, 0x23, dib0090_read_reg(state, 0x23) | (1 << 14));

  break;

 default:
  ret = 0;
  break;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rotary_encoder {scalar_t__ encoding; TYPE_1__* gpios; } ;
struct TYPE_2__ {int ndescs; int * desc; } ;


 scalar_t__ ROTENC_GRAY ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static unsigned int rotary_encoder_get_state(struct rotary_encoder *encoder)
{
 int i;
 unsigned int ret = 0;

 for (i = 0; i < encoder->gpios->ndescs; ++i) {
  int val = gpiod_get_value_cansleep(encoder->gpios->desc[i]);


  if (encoder->encoding == ROTENC_GRAY && ret & 1)
   val = !val;

  ret = ret << 1 | val;
 }

 return ret & 3;
}

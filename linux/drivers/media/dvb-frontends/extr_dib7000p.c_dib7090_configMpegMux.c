
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000p_state {int input_mode_mpeg; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dib7090_enMpegMux (struct dib7000p_state*,int) ;
 int dprintk (char*) ;

__attribute__((used)) static void dib7090_configMpegMux(struct dib7000p_state *state,
  u16 pulseWidth, u16 enSerialMode, u16 enSerialClkDiv2)
{
 dprintk("Enable Mpeg mux\n");

 dib7090_enMpegMux(state, 0);


 if ((enSerialMode == 1) && (state->input_mode_mpeg == 1))
  enSerialClkDiv2 = 0;

 dib7000p_write_word(state, 1287, ((pulseWidth & 0x1f) << 2)
   | ((enSerialMode & 0x1) << 1)
   | (enSerialClkDiv2 & 0x1));

 dib7090_enMpegMux(state, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int master_clk; } ;



__attribute__((used)) static void afcex_info_get(struct mb86a16_state *state,
      int afcex_freq,
      unsigned char *AFCEX_L,
      unsigned char *AFCEX_H)
{
 int AFCEX ;

 AFCEX = afcex_freq * 8192 / state->master_clk;
 *AFCEX_L = AFCEX & 0x00ff;
 *AFCEX_H = (AFCEX & 0x0f00) >> 8;
}

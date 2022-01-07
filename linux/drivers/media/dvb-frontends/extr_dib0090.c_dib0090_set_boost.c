
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib0090_state {int bb_1_def; } ;



__attribute__((used)) static void dib0090_set_boost(struct dib0090_state *state, int onoff)
{
 state->bb_1_def &= 0xdfff;
 state->bb_1_def |= onoff << 13;
}

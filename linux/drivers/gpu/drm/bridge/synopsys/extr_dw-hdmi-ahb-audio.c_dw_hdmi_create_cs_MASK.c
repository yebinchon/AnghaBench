#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int u8 ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_dw_hdmi {unsigned int** cs; } ;
typedef  int /*<<< orphan*/  cs ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int IEC958_AES2_CON_CHANNEL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,unsigned int*,int) ; 

__attribute__((used)) static void FUNC4(struct snd_dw_hdmi *dw,
	struct snd_pcm_runtime *runtime)
{
	u8 cs[4];
	unsigned ch, i, j;

	FUNC3(runtime, cs, sizeof(cs));

	FUNC2(dw->cs, 0, sizeof(dw->cs));

	for (ch = 0; ch < 8; ch++) {
		cs[2] &= ~IEC958_AES2_CON_CHANNEL;
		cs[2] |= (ch + 1) << 4;

		for (i = 0; i < FUNC0(cs); i++) {
			unsigned c = cs[i];

			for (j = 0; j < 8; j++, c >>= 1)
				dw->cs[i * 8 + j][ch] = (c & 1) << 2;
		}
	}
	dw->cs[0][0] |= FUNC1(4);
}
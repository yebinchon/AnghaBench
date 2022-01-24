#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_1__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct sun8i_mixer*) ; 
 int FUNC9 (struct sun8i_mixer*,int) ; 

__attribute__((used)) static void FUNC10(struct sun8i_mixer *mixer, int channel,
				  int overlay, bool enable, unsigned int zpos,
				  unsigned int old_zpos)
{
	u32 val, bld_base, ch_base;

	bld_base = FUNC8(mixer);
	ch_base = FUNC9(mixer, channel);

	FUNC0("%sabling channel %d overlay %d\n",
			 enable ? "En" : "Dis", channel, overlay);

	if (enable)
		val = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN;
	else
		val = 0;

	FUNC7(mixer->engine.regs,
			   FUNC6(ch_base, overlay),
			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);

	if (!enable || zpos != old_zpos) {
		FUNC7(mixer->engine.regs,
				   FUNC1(bld_base),
				   FUNC2(old_zpos),
				   0);

		FUNC7(mixer->engine.regs,
				   FUNC3(bld_base),
				   FUNC4(old_zpos),
				   0);
	}

	if (enable) {
		val = FUNC2(zpos);

		FUNC7(mixer->engine.regs,
				   FUNC1(bld_base),
				   val, val);

		val = channel << FUNC5(zpos);

		FUNC7(mixer->engine.regs,
				   FUNC3(bld_base),
				   FUNC4(zpos),
				   val);
	}
}
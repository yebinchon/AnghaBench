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
typedef  int u32 ;
struct tegra_sor {int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SOR_AUDIO_HDA_CODEC_SCRATCH0 ; 
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK ; 
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID ; 
 int SOR_INT_CODEC_SCRATCH0 ; 
 int /*<<< orphan*/  SOR_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_sor*) ; 
 int FUNC3 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_sor*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct tegra_sor *sor = data;
	u32 value;

	value = FUNC3(sor, SOR_INT_STATUS);
	FUNC4(sor, value, SOR_INT_STATUS);

	if (value & SOR_INT_CODEC_SCRATCH0) {
		value = FUNC3(sor, SOR_AUDIO_HDA_CODEC_SCRATCH0);

		if (value & SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID) {
			unsigned int format;

			format = value & SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK;

			FUNC0(format, &sor->format);

			FUNC2(sor);
		} else {
			FUNC1(sor);
		}
	}

	return IRQ_HANDLED;
}
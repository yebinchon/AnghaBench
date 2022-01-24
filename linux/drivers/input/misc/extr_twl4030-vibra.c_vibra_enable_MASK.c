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
typedef  int u8 ;
struct vibra_info {int enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_AUDIO_RES_APLL ; 
 int /*<<< orphan*/  TWL4030_AUDIO_RES_POWER ; 
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
 int /*<<< orphan*/  TWL4030_REG_VIBRA_CTL ; 
 int TWL4030_VIBRA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vibra_info *info)
{
	u8 reg;

	FUNC0(TWL4030_AUDIO_RES_POWER);

	/* turn H-Bridge on */
	FUNC1(TWL4030_MODULE_AUDIO_VOICE,
			&reg, TWL4030_REG_VIBRA_CTL);
	FUNC2(TWL4030_MODULE_AUDIO_VOICE,
			 (reg | TWL4030_VIBRA_EN), TWL4030_REG_VIBRA_CTL);

	FUNC0(TWL4030_AUDIO_RES_APLL);

	info->enabled = true;
}
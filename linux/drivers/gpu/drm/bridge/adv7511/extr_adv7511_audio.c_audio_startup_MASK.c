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
struct device {int dummy; } ;
struct adv7511 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_REG_AUDIO_CFG1 ; 
 int /*<<< orphan*/  ADV7511_REG_AUDIO_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADV7511_REG_INFOFRAME_UPDATE ; 
 int /*<<< orphan*/  ADV7511_REG_PACKET_ENABLE1 ; 
 int FUNC1 (int) ; 
 struct adv7511* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct adv7511 *adv7511 = FUNC2(dev);

	FUNC3(adv7511->regmap, ADV7511_REG_AUDIO_CONFIG,
				FUNC1(7), 0);

	/* hide Audio infoframe updates */
	FUNC3(adv7511->regmap, ADV7511_REG_INFOFRAME_UPDATE,
				FUNC1(5), FUNC1(5));
	/* enable N/CTS, enable Audio sample packets */
	FUNC3(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
				FUNC1(5), FUNC1(5));
	/* enable N/CTS */
	FUNC3(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
				FUNC1(6), FUNC1(6));
	/* not copyrighted */
	FUNC3(adv7511->regmap, ADV7511_REG_AUDIO_CFG1,
				FUNC1(5), FUNC1(5));
	/* enable audio infoframes */
	FUNC3(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
				FUNC1(3), FUNC1(3));
	/* AV mute disable */
	FUNC3(adv7511->regmap, FUNC0(0),
				FUNC1(7) | FUNC1(6), FUNC1(7));
	/* use Audio infoframe updated info */
	FUNC3(adv7511->regmap, FUNC0(1),
				FUNC1(5), 0);
	return 0;
}
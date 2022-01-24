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
struct TYPE_2__ {int /*<<< orphan*/  mclk; } ;
struct sii902x {TYPE_1__ audio; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SII902X_TPI_AUDIO_CONFIG_BYTE2_REG ; 
 int /*<<< orphan*/  SII902X_TPI_AUDIO_INTERFACE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sii902x* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev, void *data)
{
	struct sii902x *sii902x = FUNC1(dev);

	FUNC2(&sii902x->mutex);

	FUNC4(sii902x->regmap, SII902X_TPI_AUDIO_CONFIG_BYTE2_REG,
		     SII902X_TPI_AUDIO_INTERFACE_DISABLE);

	FUNC3(&sii902x->mutex);

	FUNC0(sii902x->audio.mclk);
}
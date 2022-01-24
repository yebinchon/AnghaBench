#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pca963x_led {int led_num; int gdc; int gfrq; TYPE_2__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; TYPE_1__* chipdef; } ;
struct TYPE_3__ {int ledout_base; int grppwm; int grpfreq; } ;

/* Variables and functions */
 int PCA963X_LED_GRP_PWM ; 
 int PCA963X_MODE2 ; 
 int PCA963X_MODE2_DMBLNK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pca963x_led *pca963x)
{
	u8 ledout_addr = pca963x->chip->chipdef->ledout_base +
		(pca963x->led_num / 4);
	u8 ledout;
	u8 mode2 = FUNC0(pca963x->chip->client,
							PCA963X_MODE2);
	int shift = 2 * (pca963x->led_num % 4);
	u8 mask = 0x3 << shift;

	FUNC1(pca963x->chip->client,
			pca963x->chip->chipdef->grppwm,	pca963x->gdc);

	FUNC1(pca963x->chip->client,
			pca963x->chip->chipdef->grpfreq, pca963x->gfrq);

	if (!(mode2 & PCA963X_MODE2_DMBLNK))
		FUNC1(pca963x->chip->client, PCA963X_MODE2,
			mode2 | PCA963X_MODE2_DMBLNK);

	FUNC2(&pca963x->chip->mutex);
	ledout = FUNC0(pca963x->chip->client, ledout_addr);
	if ((ledout & mask) != (PCA963X_LED_GRP_PWM << shift))
		FUNC1(pca963x->chip->client, ledout_addr,
			(ledout & ~mask) | (PCA963X_LED_GRP_PWM << shift));
	FUNC3(&pca963x->chip->mutex);
}
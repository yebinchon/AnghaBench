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
struct ns2501_priv {TYPE_1__* conf; } ;
struct intel_dvo_device {scalar_t__ dev_priv; } ;
struct TYPE_2__ {int sync; int syncb; int conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int NS2501_34_ENABLE_BACKLIGHT ; 
 int NS2501_34_ENABLE_OUTPUT ; 
 int NS2501_8_BPAS ; 
 int NS2501_8_HEN ; 
 int NS2501_8_VEN ; 
 int /*<<< orphan*/  NS2501_REG34 ; 
 int /*<<< orphan*/  NS2501_REG41 ; 
 int /*<<< orphan*/  NS2501_REG8 ; 
 int /*<<< orphan*/  NS2501_REGC0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dvo_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct intel_dvo_device *dvo, bool enable)
{
	struct ns2501_priv *ns = (struct ns2501_priv *)(dvo->dev_priv);

	FUNC0("Trying set the dpms of the DVO to %i\n", enable);

	if (enable) {
		FUNC2(dvo, NS2501_REGC0, ns->conf->sync | 0x08);

		FUNC2(dvo, NS2501_REG41, ns->conf->syncb);

		FUNC2(dvo, NS2501_REG34, NS2501_34_ENABLE_OUTPUT);
		FUNC1(15);

		FUNC2(dvo, NS2501_REG8,
				ns->conf->conf | NS2501_8_BPAS);
		if (!(ns->conf->conf & NS2501_8_BPAS))
			FUNC2(dvo, NS2501_REG8, ns->conf->conf);
		FUNC1(200);

		FUNC2(dvo, NS2501_REG34,
			NS2501_34_ENABLE_OUTPUT | NS2501_34_ENABLE_BACKLIGHT);

		FUNC2(dvo, NS2501_REGC0, ns->conf->sync);
	} else {
		FUNC2(dvo, NS2501_REG34, NS2501_34_ENABLE_OUTPUT);
		FUNC1(200);

		FUNC2(dvo, NS2501_REG8, NS2501_8_VEN | NS2501_8_HEN |
				NS2501_8_BPAS);
		FUNC1(15);

		FUNC2(dvo, NS2501_REG34, 0x00);
	}
}
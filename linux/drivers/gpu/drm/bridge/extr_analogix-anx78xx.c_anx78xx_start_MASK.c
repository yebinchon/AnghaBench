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
struct anx78xx {int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t I2C_IDX_TX_P2 ; 
 int SP_AUDIO_PD ; 
 int SP_HDCP_PD ; 
 int SP_LINK_PD ; 
 int /*<<< orphan*/  SP_POWERDOWN_CTRL_REG ; 
 int SP_VIDEO_PD ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct anx78xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct anx78xx*) ; 
 int FUNC4 (struct anx78xx*) ; 
 int FUNC5 (struct anx78xx*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct anx78xx *anx78xx)
{
	int err;

	/* Power on all modules */
	err = FUNC1(anx78xx->map[I2C_IDX_TX_P2],
				 SP_POWERDOWN_CTRL_REG,
				 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD |
				 SP_LINK_PD);

	err = FUNC2(anx78xx);
	if (err) {
		FUNC0("Failed to enable interrupts: %d\n", err);
		goto err_poweroff;
	}

	err = FUNC4(anx78xx);
	if (err) {
		FUNC0("Failed receiver initialization: %d\n", err);
		goto err_poweroff;
	}

	err = FUNC5(anx78xx);
	if (err) {
		FUNC0("Failed transmitter initialization: %d\n", err);
		goto err_poweroff;
	}

	/*
	 * This delay seems to help keep the hardware in a good state. Without
	 * it, there are times where it fails silently.
	 */
	FUNC6(10000, 15000);

	return 0;

err_poweroff:
	FUNC0("Failed SlimPort transmitter initialization: %d\n", err);
	FUNC3(anx78xx);

	return err;
}
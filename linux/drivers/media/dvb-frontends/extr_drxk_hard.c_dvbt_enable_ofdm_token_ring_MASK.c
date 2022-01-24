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
typedef  scalar_t__ u16 ;
struct drxk_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRXK_OFDM_TR_SHUTDOWN_TIMEOUT ; 
 int EINVAL ; 
 scalar_t__ SIO_OFDM_SH_OFDM_RING_ENABLE_OFF ; 
 scalar_t__ SIO_OFDM_SH_OFDM_RING_ENABLE_ON ; 
 int /*<<< orphan*/  SIO_OFDM_SH_OFDM_RING_ENABLE__A ; 
 scalar_t__ SIO_OFDM_SH_OFDM_RING_STATUS_DOWN ; 
 scalar_t__ SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED ; 
 int /*<<< orphan*/  SIO_OFDM_SH_OFDM_RING_STATUS__A ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct drxk_state*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct drxk_state*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct drxk_state *state, bool enable)
{
	int status;
	u16 data = 0;
	u16 desired_ctrl = SIO_OFDM_SH_OFDM_RING_ENABLE_ON;
	u16 desired_status = SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED;
	unsigned long end;

	FUNC0(1, "\n");

	if (!enable) {
		desired_ctrl = SIO_OFDM_SH_OFDM_RING_ENABLE_OFF;
		desired_status = SIO_OFDM_SH_OFDM_RING_STATUS_DOWN;
	}

	status = FUNC3(state, SIO_OFDM_SH_OFDM_RING_STATUS__A, &data);
	if (status >= 0 && data == desired_status) {
		/* tokenring already has correct status */
		return status;
	}
	/* Disable/enable dvbt tokenring bridge   */
	status = FUNC6(state, SIO_OFDM_SH_OFDM_RING_ENABLE__A, desired_ctrl);

	end = jiffies + FUNC1(DRXK_OFDM_TR_SHUTDOWN_TIMEOUT);
	do {
		status = FUNC3(state, SIO_OFDM_SH_OFDM_RING_STATUS__A, &data);
		if ((status >= 0 && data == desired_status)
		    || FUNC4(end))
			break;
		FUNC5(1000, 2000);
	} while (1);
	if (data != desired_status) {
		FUNC2("SIO not ready\n");
		return -EINVAL;
	}
	return status;
}
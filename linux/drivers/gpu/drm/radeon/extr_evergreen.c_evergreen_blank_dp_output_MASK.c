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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ EVERGREEN_DP_STEER_FIFO ; 
 unsigned int EVERGREEN_DP_STEER_FIFO_RESET ; 
 scalar_t__ EVERGREEN_DP_VID_STREAM_CNTL ; 
 unsigned int EVERGREEN_DP_VID_STREAM_CNTL_ENABLE ; 
 unsigned int EVERGREEN_DP_VID_STREAM_STATUS ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 scalar_t__* evergreen_dp_offsets ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
				      unsigned dig_fe)
{
	unsigned stream_ctrl;
	unsigned fifo_ctrl;
	unsigned counter = 0;

	if (dig_fe >= FUNC0(evergreen_dp_offsets)) {
		FUNC1("invalid dig_fe %d\n", dig_fe);
		return;
	}

	stream_ctrl = FUNC2(EVERGREEN_DP_VID_STREAM_CNTL +
			     evergreen_dp_offsets[dig_fe]);
	if (!(stream_ctrl & EVERGREEN_DP_VID_STREAM_CNTL_ENABLE)) {
		FUNC1("dig %d , should be enable\n", dig_fe);
		return;
	}

	stream_ctrl &=~EVERGREEN_DP_VID_STREAM_CNTL_ENABLE;
	FUNC3(EVERGREEN_DP_VID_STREAM_CNTL +
	       evergreen_dp_offsets[dig_fe], stream_ctrl);

	stream_ctrl = FUNC2(EVERGREEN_DP_VID_STREAM_CNTL +
			     evergreen_dp_offsets[dig_fe]);
	while (counter < 32 && stream_ctrl & EVERGREEN_DP_VID_STREAM_STATUS) {
		FUNC4(1);
		counter++;
		stream_ctrl = FUNC2(EVERGREEN_DP_VID_STREAM_CNTL +
				     evergreen_dp_offsets[dig_fe]);
	}
	if (counter >= 32 )
		FUNC1("counter exceeds %d\n", counter);

	fifo_ctrl = FUNC2(EVERGREEN_DP_STEER_FIFO + evergreen_dp_offsets[dig_fe]);
	fifo_ctrl |= EVERGREEN_DP_STEER_FIFO_RESET;
	FUNC3(EVERGREEN_DP_STEER_FIFO + evergreen_dp_offsets[dig_fe], fifo_ctrl);

}
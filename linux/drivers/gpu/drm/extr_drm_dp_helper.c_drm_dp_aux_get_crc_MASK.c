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
struct drm_dp_aux {int crc_count; } ;

/* Variables and functions */
 int DP_TEST_COUNT_MASK ; 
 int /*<<< orphan*/  DP_TEST_CRC_R_CR ; 
 int /*<<< orphan*/  DP_TEST_SINK ; 
 int /*<<< orphan*/  DP_TEST_SINK_MISC ; 
 int DP_TEST_SINK_START ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct drm_dp_aux *aux, u8 *crc)
{
	u8 buf, count;
	int ret;

	ret = FUNC2(aux, DP_TEST_SINK, &buf);
	if (ret < 0)
		return ret;

	FUNC0(!(buf & DP_TEST_SINK_START));

	ret = FUNC2(aux, DP_TEST_SINK_MISC, &buf);
	if (ret < 0)
		return ret;

	count = buf & DP_TEST_COUNT_MASK;
	if (count == aux->crc_count)
		return -EAGAIN; /* No CRC yet */

	aux->crc_count = count;

	/*
	 * At DP_TEST_CRC_R_CR, there's 6 bytes containing CRC data, 2 bytes
	 * per component (RGB or CrYCb).
	 */
	ret = FUNC1(aux, DP_TEST_CRC_R_CR, crc, 6);
	if (ret < 0)
		return ret;

	return 0;
}
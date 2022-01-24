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
typedef  size_t u32 ;
typedef  int u16 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENXIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,size_t,int) ; 

int FUNC5(struct device *dev, u16 cmd, __be32 *response,
			 size_t resp_len, size_t *data_len)
{
	u32 dh, s0, s1;
	size_t ffdc_sz;

	if (resp_len < 3) {
		FUNC3("sbefifo: cmd %04x, response too small: %zd\n",
			 cmd, resp_len);
		return -ENXIO;
	}
	dh = FUNC0(response[resp_len - 1]);
	if (dh > resp_len || dh < 3) {
		FUNC1(dev, "SBE cmd %02x:%02x status offset out of range: %d/%zd\n",
			cmd >> 8, cmd & 0xff, dh, resp_len);
		return -ENXIO;
	}
	s0 = FUNC0(response[resp_len - dh]);
	s1 = FUNC0(response[resp_len - dh + 1]);
	if (((s0 >> 16) != 0xC0DE) || ((s0 & 0xffff) != cmd)) {
		FUNC1(dev, "SBE cmd %02x:%02x, status signature invalid: 0x%08x 0x%08x\n",
			cmd >> 8, cmd & 0xff, s0, s1);
		return -ENXIO;
	}
	if (s1 != 0) {
		ffdc_sz = dh - 3;
		FUNC2(dev, "SBE error cmd %02x:%02x status=%04x:%04x\n",
			 cmd >> 8, cmd & 0xff, s1 >> 16, s1 & 0xffff);
		if (ffdc_sz)
			FUNC4(dev, &response[resp_len - dh + 2],
					  ffdc_sz, false);
	}
	if (data_len)
		*data_len = resp_len - dh;

	/*
	 * Primary status don't have the top bit set, so can't be confused with
	 * Linux negative error codes, so return the status word whole.
	 */
	return s1;
}
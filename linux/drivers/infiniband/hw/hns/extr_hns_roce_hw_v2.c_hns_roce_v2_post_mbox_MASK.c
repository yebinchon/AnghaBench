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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct hns_roce_dev*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev, u64 in_param,
				 u64 out_param, u32 in_modifier, u8 op_modifier,
				 u16 op, u16 token, int event)
{
	struct device *dev = hr_dev->dev;
	unsigned long end;
	int ret;

	end = FUNC5(HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS) + jiffies;
	while (FUNC4(hr_dev)) {
		if (FUNC6(jiffies, end)) {
			FUNC1(dev, "jiffies=%d end=%d\n", (int)jiffies,
				(int)end);
			return -EAGAIN;
		}
		FUNC0();
	}

	ret = FUNC3(hr_dev, in_param, out_param, in_modifier,
				 op_modifier, op, token, event);
	if (ret)
		FUNC2(dev, "Post mailbox fail(%d)\n", ret);

	return ret;
}
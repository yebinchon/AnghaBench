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
typedef  int u32 ;
struct ipuv3_channel {int /*<<< orphan*/  num; struct ipu_soc* ipu; } ;
struct ipu_soc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC7(struct ipuv3_channel *channel, u32 buf_num)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned long flags;
	u32 reg = 0;

	FUNC5(&ipu->lock, flags);
	switch (buf_num) {
	case 0:
		reg = FUNC4(ipu, FUNC0(channel->num));
		break;
	case 1:
		reg = FUNC4(ipu, FUNC1(channel->num));
		break;
	case 2:
		reg = FUNC4(ipu, FUNC2(channel->num));
		break;
	}
	FUNC6(&ipu->lock, flags);

	return ((reg & FUNC3(channel->num)) != 0);
}
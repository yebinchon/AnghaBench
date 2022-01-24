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
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct ipuv3_channel *channel, bool enable)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned long flags;
	u32 val;

	FUNC3(&ipu->lock, flags);

	val = FUNC1(ipu, FUNC0(channel->num));
	if (enable)
		val |= 1 << (channel->num % 32);
	else
		val &= ~(1 << (channel->num % 32));
	FUNC2(ipu, val, FUNC0(channel->num));

	FUNC4(&ipu->lock, flags);
}
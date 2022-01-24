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
typedef  int u32 ;
struct ipu_soc {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int mask; int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {int mask; int /*<<< orphan*/  reg; } ;
struct fsu_link_info {TYPE_2__ sink; TYPE_1__ src; } ;

/* Variables and functions */
 int EINVAL ; 
 struct fsu_link_info* FUNC0 (int,int) ; 
 int FUNC1 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ipu_soc *ipu, int src_ch, int sink_ch)
{
	const struct fsu_link_info *link;
	u32 src_reg, sink_reg;
	unsigned long flags;

	link = FUNC0(src_ch, sink_ch);
	if (!link)
		return -EINVAL;

	FUNC3(&ipu->lock, flags);

	if (link->src.mask) {
		src_reg = FUNC1(ipu, link->src.reg);
		src_reg &= ~link->src.mask;
		FUNC2(ipu, src_reg, link->src.reg);
	}

	if (link->sink.mask) {
		sink_reg = FUNC1(ipu, link->sink.reg);
		sink_reg &= ~link->sink.mask;
		FUNC2(ipu, sink_reg, link->sink.reg);
	}

	FUNC4(&ipu->lock, flags);
	return 0;
}
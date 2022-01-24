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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct sun6i_vchan {TYPE_1__ vc; } ;
struct sun6i_dma_lli {int /*<<< orphan*/  p_lli_next; int /*<<< orphan*/  para; int /*<<< orphan*/  len; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  cfg; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct sun6i_dma_lli*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sun6i_dma_lli*) ; 

__attribute__((used)) static inline void FUNC3(struct sun6i_vchan *vchan,
				      struct sun6i_dma_lli *lli)
{
	phys_addr_t p_lli = FUNC2(lli);

	FUNC1(FUNC0(&vchan->vc.chan),
		"\n\tdesc:   p - %pa v - 0x%p\n"
		"\t\tc - 0x%08x s - 0x%08x d - 0x%08x\n"
		"\t\tl - 0x%08x p - 0x%08x n - 0x%08x\n",
		&p_lli, lli,
		lli->cfg, lli->src, lli->dst,
		lli->len, lli->para, lli->p_lli_next);
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u16 ;
struct qib_user_sdma_pkt {TYPE_2__* addr; } ;
struct qib_pportdata {scalar_t__ sdma_intrequest; TYPE_1__* sdma_descq; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {scalar_t__ last_desc; scalar_t__ first_desc; scalar_t__ length; scalar_t__ offset; scalar_t__ addr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * qw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qib_pportdata *ppd,
				    struct qib_user_sdma_pkt *pkt, int idx,
				    unsigned ofs, u16 tail, u8 gen)
{
	const u64 addr = (u64) pkt->addr[idx].addr +
		(u64) pkt->addr[idx].offset;
	const u64 dwlen = (u64) pkt->addr[idx].length / 4;
	__le64 *descqp;
	__le64 descq0;

	descqp = &ppd->sdma_descq[tail].qw[0];

	descq0 = FUNC1(gen, addr, dwlen, ofs);
	if (pkt->addr[idx].first_desc)
		descq0 = FUNC3(descq0);
	if (pkt->addr[idx].last_desc) {
		descq0 = FUNC4(descq0);
		if (ppd->sdma_intrequest) {
			descq0 |= FUNC0(1ULL << 15);
			ppd->sdma_intrequest = 0;
		}
	}

	descqp[0] = descq0;
	descqp[1] = FUNC2(addr);
}
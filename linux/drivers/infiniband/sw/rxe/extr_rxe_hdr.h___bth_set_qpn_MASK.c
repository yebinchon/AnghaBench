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
struct rxe_bth {int /*<<< orphan*/  qpn; } ;

/* Variables and functions */
 int BTH_QPN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(void *arg, u32 qpn)
{
	struct rxe_bth *bth = arg;
	u32 resvqpn = FUNC0(bth->qpn);

	bth->qpn = FUNC1((BTH_QPN_MASK & qpn) |
			       (~BTH_QPN_MASK & resvqpn));
}
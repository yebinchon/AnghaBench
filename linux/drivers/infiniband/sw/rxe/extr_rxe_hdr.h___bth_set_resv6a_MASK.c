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
struct rxe_bth {int /*<<< orphan*/  qpn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTH_RESV6A_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(void *arg)
{
	struct rxe_bth *bth = arg;

	bth->qpn = FUNC0(~BTH_RESV6A_MASK);
}
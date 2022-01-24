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
typedef  int u32 ;
struct rxe_aeth {int /*<<< orphan*/  smsn; } ;

/* Variables and functions */
 int AETH_SYN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(void *arg, u8 syn)
{
	struct rxe_aeth *aeth = arg;
	u32 smsn = FUNC0(aeth->smsn);

	aeth->smsn = FUNC1((AETH_SYN_MASK & (syn << 24)) |
			 (~AETH_SYN_MASK & smsn));
}
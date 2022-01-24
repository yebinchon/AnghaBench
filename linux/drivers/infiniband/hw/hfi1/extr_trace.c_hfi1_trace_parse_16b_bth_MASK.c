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
typedef  int /*<<< orphan*/  u32 ;
struct ib_other_headers {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct ib_other_headers *ohdr,
			      u8 *ack, u8 *mig, u8 *opcode,
			      u8 *pad, u8 *se, u8 *tver,
			      u32 *psn, u32 *qpn)
{
	*ack = FUNC0(ohdr);
	*mig = FUNC1(ohdr);
	*opcode = FUNC2(ohdr);
	*pad = FUNC3(ohdr);
	*se = FUNC6(ohdr);
	*tver = FUNC7(ohdr);
	*psn = FUNC8(FUNC4(ohdr));
	*qpn = FUNC5(ohdr);
}
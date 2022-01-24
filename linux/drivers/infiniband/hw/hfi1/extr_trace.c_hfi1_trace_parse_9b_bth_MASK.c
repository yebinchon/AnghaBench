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
typedef  int /*<<< orphan*/  u16 ;
struct ib_other_headers {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_other_headers*) ; 
 int FUNC1 (struct ib_other_headers*) ; 
 int FUNC2 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_other_headers*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct ib_other_headers *ohdr,
			     u8 *ack, bool *becn, bool *fecn, u8 *mig,
			     u8 *se, u8 *pad, u8 *opcode, u8 *tver,
			     u16 *pkey, u32 *psn, u32 *qpn)
{
	*ack = FUNC0(ohdr);
	*becn = FUNC1(ohdr);
	*fecn = FUNC2(ohdr);
	*mig = FUNC3(ohdr);
	*se = FUNC9(ohdr);
	*pad = FUNC5(ohdr);
	*opcode = FUNC4(ohdr);
	*tver = FUNC10(ohdr);
	*pkey = FUNC6(ohdr);
	*psn = FUNC11(FUNC7(ohdr));
	*qpn = FUNC8(ohdr);
}
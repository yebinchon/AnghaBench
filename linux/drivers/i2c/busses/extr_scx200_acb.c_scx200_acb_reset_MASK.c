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
struct scx200_acb_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACBADDR ; 
 int /*<<< orphan*/  ACBCST ; 
 int ACBCST_BB ; 
 int /*<<< orphan*/  ACBCTL1 ; 
 int ACBCTL1_NMINTE ; 
 int ACBCTL1_STASTRE ; 
 int ACBCTL1_STOP ; 
 int /*<<< orphan*/  ACBCTL2 ; 
 int ACBCTL2_ENABLE ; 
 int /*<<< orphan*/  ACBST ; 
 int ACBST_BER ; 
 int ACBST_NEGACK ; 
 int ACBST_STASTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct scx200_acb_iface *iface)
{
	/* Disable the ACCESS.bus device and Configure the SCL
	   frequency: 16 clock cycles */
	FUNC1(0x70, ACBCTL2);
	/* Polling mode */
	FUNC1(0, ACBCTL1);
	/* Disable slave address */
	FUNC1(0, ACBADDR);
	/* Enable the ACCESS.bus device */
	FUNC1(FUNC0(ACBCTL2) | ACBCTL2_ENABLE, ACBCTL2);
	/* Free STALL after START */
	FUNC1(FUNC0(ACBCTL1) & ~(ACBCTL1_STASTRE | ACBCTL1_NMINTE), ACBCTL1);
	/* Send a STOP */
	FUNC1(FUNC0(ACBCTL1) | ACBCTL1_STOP, ACBCTL1);
	/* Clear BER, NEGACK and STASTR bits */
	FUNC1(ACBST_BER | ACBST_NEGACK | ACBST_STASTR, ACBST);
	/* Clear BB bit */
	FUNC1(FUNC0(ACBCST) | ACBCST_BB, ACBCST);
}
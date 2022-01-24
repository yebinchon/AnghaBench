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
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int BIT_MDT_IDLE_AFTER_HAWB_DISABLE ; 
 int BIT_MDT_RCV_SM_ABORT_PKT_RCVD ; 
 int BIT_MDT_RCV_SM_ERROR ; 
 int BIT_MDT_RCV_TIMEOUT ; 
 int BIT_MDT_RFIFO_DATA_RDY ; 
 int BIT_MDT_XFIFO_EMPTY ; 
 int BIT_MDT_XMIT_SM_ABORT_PKT_RCVD ; 
 int BIT_MDT_XMIT_SM_ERROR ; 
 int BIT_MDT_XMIT_TIMEOUT ; 
 int /*<<< orphan*/  REG_MDT_INT_0_MASK ; 
 int /*<<< orphan*/  REG_MDT_INT_1_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	FUNC1(ctx,
		REG_MDT_INT_1_MASK, BIT_MDT_RCV_TIMEOUT
			| BIT_MDT_RCV_SM_ABORT_PKT_RCVD | BIT_MDT_RCV_SM_ERROR
			| BIT_MDT_XMIT_TIMEOUT | BIT_MDT_XMIT_SM_ABORT_PKT_RCVD
			| BIT_MDT_XMIT_SM_ERROR,
		REG_MDT_INT_0_MASK, BIT_MDT_XFIFO_EMPTY
			| BIT_MDT_IDLE_AFTER_HAWB_DISABLE
			| BIT_MDT_RFIFO_DATA_RDY
	);
	FUNC0(ctx);
}
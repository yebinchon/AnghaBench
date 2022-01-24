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
struct stm32_cryp {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CRYP_SR ; 
 int SR_OFNE ; 
 int FUNC0 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static inline int FUNC1(struct stm32_cryp *cryp)
{
	u32 status;

	return FUNC0(cryp->regs + CRYP_SR, status,
			status & SR_OFNE, 10, 100000);
}
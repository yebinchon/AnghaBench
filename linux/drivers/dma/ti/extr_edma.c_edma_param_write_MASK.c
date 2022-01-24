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
struct edma_cc {int dummy; } ;

/* Variables and functions */
 scalar_t__ EDMA_PARM ; 
 int /*<<< orphan*/  FUNC0 (struct edma_cc*,scalar_t__,unsigned int) ; 

__attribute__((used)) static inline void FUNC1(struct edma_cc *ecc, int offset,
				    int param_no, unsigned val)
{
	FUNC0(ecc, EDMA_PARM + offset + (param_no << 5), val);
}
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
struct gart_device {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ GART_ENTRY_ADDR ; 
 scalar_t__ GART_ENTRY_DATA ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline unsigned long FUNC2(struct gart_device *gart,
					  unsigned long iova)
{
	unsigned long pte;

	FUNC1(iova, gart->regs + GART_ENTRY_ADDR);
	pte = FUNC0(gart->regs + GART_ENTRY_DATA);

	return pte;
}
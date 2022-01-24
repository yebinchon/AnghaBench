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
typedef  int uint32_t ;
struct pxa930_rotary {scalar_t__ mmio_base; } ;

/* Variables and functions */
 scalar_t__ SBCR ; 
 int SBCR_ERSB ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct pxa930_rotary *r)
{
	uint32_t sbcr = FUNC0(r->mmio_base + SBCR);

	FUNC1(sbcr | SBCR_ERSB, r->mmio_base + SBCR);
	FUNC1(sbcr & ~SBCR_ERSB, r->mmio_base + SBCR);
}
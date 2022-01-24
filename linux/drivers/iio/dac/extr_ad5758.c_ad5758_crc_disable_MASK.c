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
struct ad5758_state {int /*<<< orphan*/ * d32; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_DIGITAL_DIAG_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st)
{
	unsigned int mask;

	mask = (FUNC0(AD5758_DIGITAL_DIAG_CONFIG) << 24) | 0x5C3A;
	st->d32[0] = FUNC1(mask);

	return FUNC2(st->spi, &st->d32[0], 4);
}
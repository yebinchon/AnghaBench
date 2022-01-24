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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(const u8 *addr, const u8 *broadcast)
{
	/* reserved QPN, prefix, scope */
	if (FUNC0(addr, broadcast, 6))
		return 0;
	/* signature lower, pkey */
	if (FUNC0(addr + 7, broadcast + 7, 3))
		return 0;
	return 1;
}
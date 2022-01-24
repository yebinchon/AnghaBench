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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 unsigned int FLAGS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le64 FUNC2(dm_oblock_t block, unsigned flags)
{
	uint64_t value = FUNC1(block);
	value <<= 16;
	value = value | (flags & FLAGS_MASK);
	return FUNC0(value);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ val; } ;
typedef  TYPE_1__ uint_fixed_16_16_t ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 TYPE_1__ FUNC0 (scalar_t__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint_fixed_16_16_t FUNC2(uint_fixed_16_16_t add1,
						 u32 add2)
{
	uint_fixed_16_16_t tmp_add2 = FUNC1(add2);
	u64 tmp;

	tmp = (u64)add1.val + tmp_add2.val;

	return FUNC0(tmp);
}
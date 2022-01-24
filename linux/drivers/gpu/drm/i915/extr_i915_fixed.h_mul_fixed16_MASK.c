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
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ uint_fixed_16_16_t ;
typedef  int u64 ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint_fixed_16_16_t FUNC2(uint_fixed_16_16_t val,
					     uint_fixed_16_16_t mul)
{
	u64 tmp;

	tmp = FUNC1(val.val, mul.val);
	tmp = tmp >> 16;

	return FUNC0(tmp);
}
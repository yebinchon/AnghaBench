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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline uint_fixed_16_16_t FUNC2(u32 val, u32 d)
{
	u64 tmp;

	tmp = (u64)val << 16;
	tmp = FUNC0(tmp, d);

	return FUNC1(tmp);
}
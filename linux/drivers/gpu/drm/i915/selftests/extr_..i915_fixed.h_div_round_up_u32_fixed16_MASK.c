#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ uint_fixed_16_16_t ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline u32 FUNC2(u32 val, uint_fixed_16_16_t d)
{
	u64 tmp;

	tmp = (u64)val << 16;
	tmp = FUNC0(tmp, d.val);
	FUNC1(tmp > U32_MAX);

	return (u32)tmp;
}
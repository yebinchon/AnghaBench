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
typedef  int /*<<< orphan*/  u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct octeon_i2c *i2c, u64 data)
{
	FUNC1(data, i2c->twsi_base + FUNC0(i2c));
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct ishtp_device {int dummy; } ;
struct ish_hw {scalar_t__ mem_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct ish_hw* FUNC1 (struct ishtp_device const*) ; 

__attribute__((used)) static inline uint32_t FUNC2(const struct ishtp_device *dev,
	unsigned long offset)
{
	struct ish_hw *hw = FUNC1(dev);

	return FUNC0(hw->mem_addr + offset);
}
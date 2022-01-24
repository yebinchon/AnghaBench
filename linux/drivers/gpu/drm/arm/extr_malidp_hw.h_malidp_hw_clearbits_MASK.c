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
typedef  int /*<<< orphan*/  u32 ;
struct malidp_hw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malidp_hw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct malidp_hw_device *hwdev,
				       u32 mask, u32 reg)
{
	u32 data = FUNC0(hwdev, reg);

	data &= ~mask;
	FUNC1(hwdev, data, reg);
}
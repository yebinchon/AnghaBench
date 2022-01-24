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
typedef  scalar_t__ u8 ;
struct malidp_hw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALIDP500_CONFIG_VALID ; 
 int /*<<< orphan*/  MALIDP_CFG_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct malidp_hw_device *hwdev, u8 value)
{
	if (value)
		FUNC1(hwdev, MALIDP_CFG_VALID, MALIDP500_CONFIG_VALID);
	else
		FUNC0(hwdev, MALIDP_CFG_VALID, MALIDP500_CONFIG_VALID);
}
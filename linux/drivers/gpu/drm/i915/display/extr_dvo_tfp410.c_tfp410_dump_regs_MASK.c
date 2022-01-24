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
struct intel_dvo_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TFP410_CTL_1 ; 
 int /*<<< orphan*/  TFP410_CTL_2 ; 
 int /*<<< orphan*/  TFP410_CTL_3 ; 
 int /*<<< orphan*/  TFP410_DE_CNT_HI ; 
 int /*<<< orphan*/  TFP410_DE_CNT_LO ; 
 int /*<<< orphan*/  TFP410_DE_CTL ; 
 int /*<<< orphan*/  TFP410_DE_DLY ; 
 int /*<<< orphan*/  TFP410_DE_LIN_HI ; 
 int /*<<< orphan*/  TFP410_DE_LIN_LO ; 
 int /*<<< orphan*/  TFP410_DE_TOP ; 
 int /*<<< orphan*/  TFP410_H_RES_HI ; 
 int /*<<< orphan*/  TFP410_H_RES_LO ; 
 int /*<<< orphan*/  TFP410_REV ; 
 int /*<<< orphan*/  TFP410_USERCFG ; 
 int /*<<< orphan*/  TFP410_V_RES_HI ; 
 int /*<<< orphan*/  TFP410_V_RES_LO ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dvo_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_dvo_device *dvo)
{
	u8 val, val2;

	FUNC1(dvo, TFP410_REV, &val);
	FUNC0("TFP410_REV: 0x%02X\n", val);
	FUNC1(dvo, TFP410_CTL_1, &val);
	FUNC0("TFP410_CTL1: 0x%02X\n", val);
	FUNC1(dvo, TFP410_CTL_2, &val);
	FUNC0("TFP410_CTL2: 0x%02X\n", val);
	FUNC1(dvo, TFP410_CTL_3, &val);
	FUNC0("TFP410_CTL3: 0x%02X\n", val);
	FUNC1(dvo, TFP410_USERCFG, &val);
	FUNC0("TFP410_USERCFG: 0x%02X\n", val);
	FUNC1(dvo, TFP410_DE_DLY, &val);
	FUNC0("TFP410_DE_DLY: 0x%02X\n", val);
	FUNC1(dvo, TFP410_DE_CTL, &val);
	FUNC0("TFP410_DE_CTL: 0x%02X\n", val);
	FUNC1(dvo, TFP410_DE_TOP, &val);
	FUNC0("TFP410_DE_TOP: 0x%02X\n", val);
	FUNC1(dvo, TFP410_DE_CNT_LO, &val);
	FUNC1(dvo, TFP410_DE_CNT_HI, &val2);
	FUNC0("TFP410_DE_CNT: 0x%02X%02X\n", val2, val);
	FUNC1(dvo, TFP410_DE_LIN_LO, &val);
	FUNC1(dvo, TFP410_DE_LIN_HI, &val2);
	FUNC0("TFP410_DE_LIN: 0x%02X%02X\n", val2, val);
	FUNC1(dvo, TFP410_H_RES_LO, &val);
	FUNC1(dvo, TFP410_H_RES_HI, &val2);
	FUNC0("TFP410_H_RES: 0x%02X%02X\n", val2, val);
	FUNC1(dvo, TFP410_V_RES_LO, &val);
	FUNC1(dvo, TFP410_V_RES_HI, &val2);
	FUNC0("TFP410_V_RES: 0x%02X%02X\n", val2, val);
}
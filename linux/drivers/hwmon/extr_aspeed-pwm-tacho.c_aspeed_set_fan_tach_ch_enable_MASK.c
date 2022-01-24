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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_PTCR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct regmap *regmap, u8 fan_tach_ch,
					  bool enable)
{
	FUNC1(regmap, ASPEED_PTCR_CTRL,
			   FUNC0(fan_tach_ch),
			   enable ?
			   FUNC0(fan_tach_ch) : 0);
}
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
typedef  int u32 ;
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 
 scalar_t__ FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct dsi_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dsi_data *dsi, int channel)
{
	while (FUNC3(dsi, FUNC0(channel), 20, 20)) {
		u32 val;
		val = FUNC4(dsi, FUNC1(channel));
		FUNC2("\t\tb1 %#02x b2 %#02x b3 %#02x b4 %#02x\n",
				(val >> 0) & 0xff,
				(val >> 8) & 0xff,
				(val >> 16) & 0xff,
				(val >> 24) & 0xff);
	}
}
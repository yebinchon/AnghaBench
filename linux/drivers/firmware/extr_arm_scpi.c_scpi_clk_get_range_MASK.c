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
typedef  int /*<<< orphan*/  u16 ;
struct clk_get_info {int /*<<< orphan*/  max_rate; int /*<<< orphan*/  min_rate; } ;
typedef  int /*<<< orphan*/  le_clk_id ;
typedef  int /*<<< orphan*/  clk ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_CLOCK_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct clk_get_info*,int) ; 

__attribute__((used)) static int
FUNC3(u16 clk_id, unsigned long *min, unsigned long *max)
{
	int ret;
	struct clk_get_info clk;
	__le16 le_clk_id = FUNC0(clk_id);

	ret = FUNC2(CMD_GET_CLOCK_INFO, &le_clk_id,
				sizeof(le_clk_id), &clk, sizeof(clk));
	if (!ret) {
		*min = FUNC1(clk.min_rate);
		*max = FUNC1(clk.max_rate);
	}
	return ret;
}
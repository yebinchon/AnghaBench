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
struct hts221_hw {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hts221_buffer_handler_thread ; 
 int /*<<< orphan*/  hts221_buffer_ops ; 
 int /*<<< orphan*/  FUNC1 (struct hts221_hw*) ; 

int FUNC2(struct hts221_hw *hw)
{
	return FUNC0(hw->dev, FUNC1(hw),
					NULL, hts221_buffer_handler_thread,
					&hts221_buffer_ops);
}
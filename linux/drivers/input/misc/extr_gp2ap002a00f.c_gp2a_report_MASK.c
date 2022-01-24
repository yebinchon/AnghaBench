#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gp2a_data {int /*<<< orphan*/  input; TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  vout_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_FRONT_PROXIMITY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gp2a_data *dt)
{
	int vo = FUNC0(dt->pdata->vout_gpio);

	FUNC1(dt->input, SW_FRONT_PROXIMITY, !vo);
	FUNC2(dt->input);

	return 0;
}
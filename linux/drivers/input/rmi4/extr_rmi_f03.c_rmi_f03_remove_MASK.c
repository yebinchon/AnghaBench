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
struct rmi_function {int /*<<< orphan*/  dev; } ;
struct f03_data {int /*<<< orphan*/  serio; scalar_t__ serio_registered; } ;

/* Variables and functions */
 struct f03_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rmi_function *fn)
{
	struct f03_data *f03 = FUNC0(&fn->dev);

	if (f03->serio_registered)
		FUNC1(f03->serio);
}
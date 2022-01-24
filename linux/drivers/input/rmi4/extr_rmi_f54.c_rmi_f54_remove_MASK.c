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
struct f54_data {int /*<<< orphan*/  v4l2; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 struct f54_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rmi_function *fn)
{
	struct f54_data *f54 = FUNC0(&fn->dev);

	FUNC2(&f54->vdev);
	FUNC1(&f54->v4l2);
}
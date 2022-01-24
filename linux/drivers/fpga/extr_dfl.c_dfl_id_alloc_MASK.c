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
struct device {int dummy; } ;
typedef  enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int DFL_ID_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* dfl_devs ; 
 int /*<<< orphan*/  dfl_id_mutex ; 
 int FUNC1 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(enum dfl_id_type type, struct device *dev)
{
	int id;

	FUNC0(type >= DFL_ID_MAX);
	FUNC2(&dfl_id_mutex);
	id = FUNC1(&dfl_devs[type].id, dev, 0, 0, GFP_KERNEL);
	FUNC3(&dfl_id_mutex);

	return id;
}
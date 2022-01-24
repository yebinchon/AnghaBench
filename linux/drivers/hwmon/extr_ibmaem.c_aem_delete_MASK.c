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
struct TYPE_2__ {int /*<<< orphan*/  user; } ;
struct aem_data {int /*<<< orphan*/  id; int /*<<< orphan*/  pdev; TYPE_1__ ipmi; int /*<<< orphan*/  hwmon_dev; struct aem_data* rs_resp; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  aem_ida ; 
 int /*<<< orphan*/  FUNC0 (struct aem_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aem_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct aem_data *data)
{
	FUNC5(&data->list);
	FUNC0(data);
	FUNC4(data->rs_resp);
	FUNC1(data->hwmon_dev);
	FUNC3(data->ipmi.user);
	FUNC7(data->pdev, NULL);
	FUNC6(data->pdev);
	FUNC2(&aem_ida, data->id);
	FUNC4(data);
}
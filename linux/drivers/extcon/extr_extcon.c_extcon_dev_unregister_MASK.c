#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* groups; } ;
struct extcon_dev {int max_supported; int /*<<< orphan*/  dev; TYPE_4__* cables; TYPE_3__ extcon_dev_type; TYPE_4__* attrs_muex; TYPE_4__* d_attrs_muex; scalar_t__* mutually_exclusive; int /*<<< orphan*/  entry; } ;
struct TYPE_6__ {TYPE_4__* name; } ;
struct TYPE_5__ {TYPE_4__* name; } ;
struct TYPE_8__ {TYPE_2__ attr_g; TYPE_1__ attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extcon_dev_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct extcon_dev *edev)
{
	int index;

	if (!edev)
		return;

	FUNC7(&extcon_dev_list_lock);
	FUNC6(&edev->entry);
	FUNC8(&extcon_dev_list_lock);

	if (FUNC0(FUNC4(&edev->dev))) {
		FUNC1(&edev->dev, "Failed to unregister extcon_dev (%s)\n",
				FUNC2(&edev->dev));
		return;
	}

	FUNC3(&edev->dev);

	if (edev->mutually_exclusive && edev->max_supported) {
		for (index = 0; edev->mutually_exclusive[index];
				index++)
			FUNC5(edev->d_attrs_muex[index].attr.name);
		FUNC5(edev->d_attrs_muex);
		FUNC5(edev->attrs_muex);
	}

	for (index = 0; index < edev->max_supported; index++)
		FUNC5(edev->cables[index].attr_g.name);

	if (edev->max_supported) {
		FUNC5(edev->extcon_dev_type.groups);
		FUNC5(edev->cables);
	}

	FUNC9(&edev->dev);
}
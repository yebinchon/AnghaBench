#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct hidma_mgmt_dev {TYPE_1__* pdev; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_6__ {TYPE_3__ attr; int /*<<< orphan*/  store; int /*<<< orphan*/  show; } ;
struct hidma_chan_attr {int index; TYPE_2__ attr; struct hidma_mgmt_dev* mdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hidma_chan_attr* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_values_channel ; 
 int /*<<< orphan*/  show_values_channel ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct kobject*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(struct hidma_mgmt_dev *mdev, char *name,
				      int mode, int index,
				      struct kobject *parent)
{
	struct hidma_chan_attr *chattr;
	char *name_copy;

	chattr = FUNC0(&mdev->pdev->dev, sizeof(*chattr), GFP_KERNEL);
	if (!chattr)
		return -ENOMEM;

	name_copy = FUNC1(&mdev->pdev->dev, name, GFP_KERNEL);
	if (!name_copy)
		return -ENOMEM;

	chattr->mdev = mdev;
	chattr->index = index;
	chattr->attr.attr.name = name_copy;
	chattr->attr.attr.mode = mode;
	chattr->attr.show = show_values_channel;
	chattr->attr.store = set_values_channel;
	FUNC2(&chattr->attr.attr);

	return FUNC3(parent, &chattr->attr.attr);
}
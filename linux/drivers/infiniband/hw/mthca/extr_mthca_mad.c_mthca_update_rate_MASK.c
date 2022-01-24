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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mthca_dev {int* rate; TYPE_1__ ib_dev; } ;
struct ib_port_attr {int active_speed; int /*<<< orphan*/  active_width; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (TYPE_1__*,int,struct ib_port_attr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_port_attr*) ; 
 struct ib_port_attr* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mthca_dev *dev, u8 port_num)
{
	struct ib_port_attr *tprops = NULL;
	int                  ret;

	tprops = FUNC4(sizeof *tprops, GFP_KERNEL);
	if (!tprops)
		return -ENOMEM;

	ret = FUNC1(&dev->ib_dev, port_num, tprops);
	if (ret) {
		FUNC0(&dev->ib_dev.dev,
			 "ib_query_port failed (%d) forport %d\n", ret,
			 port_num);
		goto out;
	}

	dev->rate[port_num - 1] = tprops->active_speed *
				  FUNC2(tprops->active_width);

out:
	FUNC3(tprops);
	return ret;
}
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
typedef  scalar_t__ u16 ;
struct ida {int dummy; } ;
struct gb_host_device {int /*<<< orphan*/  dev; struct ida cport_id_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC1 (struct ida*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC2(struct gb_host_device *hd, u16 cport_id)
{
	struct ida *id_map = &hd->cport_id_map;
	int ret;

	ret = FUNC1(id_map, cport_id, cport_id + 1, GFP_KERNEL);
	if (ret < 0) {
		FUNC0(&hd->dev, "failed to reserve cport %u\n", cport_id);
		return ret;
	}

	return 0;
}
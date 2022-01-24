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
struct its_device {int /*<<< orphan*/  its; } ;
struct TYPE_2__ {int valid; struct its_device* dev; } ;
struct its_cmd_desc {TYPE_1__ its_mapd_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  its_build_mapd_cmd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct its_cmd_desc*) ; 

__attribute__((used)) static void FUNC1(struct its_device *dev, int valid)
{
	struct its_cmd_desc desc;

	desc.its_mapd_cmd.dev = dev;
	desc.its_mapd_cmd.valid = !!valid;

	FUNC0(dev->its, its_build_mapd_cmd, &desc);
}
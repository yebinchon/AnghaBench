#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int port; int active; } ;
struct intel_th_device {TYPE_1__ output; scalar_t__ host_mode; int /*<<< orphan*/  dev; } ;
struct gth_device {int* master; int /*<<< orphan*/  gth_lock; TYPE_2__* output; } ;
struct TYPE_4__ {int /*<<< orphan*/ * output; } ;

/* Variables and functions */
 int TH_CONFIGURABLE_MASTERS ; 
 struct gth_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct intel_th_device *thdev,
				  struct intel_th_device *othdev)
{
	struct gth_device *gth = FUNC0(&thdev->dev);
	int port = othdev->output.port;
	int master;

	if (thdev->host_mode)
		return;

	FUNC1(&gth->gth_lock);
	othdev->output.port = -1;
	othdev->output.active = false;
	gth->output[port].output = NULL;
	for (master = 0; master <= TH_CONFIGURABLE_MASTERS; master++)
		if (gth->master[master] == port)
			gth->master[master] = -1;
	FUNC2(&gth->gth_lock);
}
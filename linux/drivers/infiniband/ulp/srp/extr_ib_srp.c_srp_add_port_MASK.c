#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;
struct srp_host {TYPE_2__ dev; int /*<<< orphan*/  port; struct srp_device* srp_dev; int /*<<< orphan*/  add_target_mutex; int /*<<< orphan*/  released; int /*<<< orphan*/  target_lock; int /*<<< orphan*/  target_list; } ;
struct srp_device {TYPE_1__* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_6__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_add_target ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_attr_port ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct srp_host*) ; 
 struct srp_host* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srp_class ; 

__attribute__((used)) static struct srp_host *FUNC11(struct srp_device *device, u8 port)
{
	struct srp_host *host;

	host = FUNC8(sizeof *host, GFP_KERNEL);
	if (!host)
		return NULL;

	FUNC0(&host->target_list);
	FUNC10(&host->target_lock);
	FUNC6(&host->released);
	FUNC9(&host->add_target_mutex);
	host->srp_dev = device;
	host->port = port;

	host->dev.class = &srp_class;
	host->dev.parent = device->dev->dev.parent;
	FUNC2(&host->dev, "srp-%s-%d", FUNC1(&device->dev->dev),
		     port);

	if (FUNC4(&host->dev))
		goto free_host;
	if (FUNC3(&host->dev, &dev_attr_add_target))
		goto err_class;
	if (FUNC3(&host->dev, &dev_attr_ibdev))
		goto err_class;
	if (FUNC3(&host->dev, &dev_attr_port))
		goto err_class;

	return host;

err_class:
	FUNC5(&host->dev);

free_host:
	FUNC7(host);

	return NULL;
}
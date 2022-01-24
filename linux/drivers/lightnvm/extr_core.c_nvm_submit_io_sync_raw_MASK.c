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
struct nvm_rq {int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev; } ;
struct nvm_dev {int /*<<< orphan*/  geo; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  submit_io; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nvm_rq*) ; 
 int FUNC1 (struct nvm_dev*,struct nvm_rq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nvm_dev *dev, struct nvm_rq *rqd)
{
	if (!dev->ops->submit_io)
		return -ENODEV;

	rqd->dev = NULL;
	rqd->flags = FUNC0(&dev->geo, rqd);

	return FUNC1(dev, rqd, NULL);
}
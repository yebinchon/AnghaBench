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
struct sp_device {int ord; int /*<<< orphan*/  axcache; struct device* dev; } ;
struct device {int dummy; } ;
struct ccp_device {int /*<<< orphan*/  rngname; int /*<<< orphan*/  name; int /*<<< orphan*/  suspend_queue; int /*<<< orphan*/  sb_queue; scalar_t__ sb_start; int /*<<< orphan*/  sb_count; int /*<<< orphan*/  sb_mutex; int /*<<< orphan*/  req_mutex; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  backlog; int /*<<< orphan*/  cmd; int /*<<< orphan*/  axcache; struct sp_device* sp; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KSB_COUNT ; 
 int /*<<< orphan*/  MAX_CCP_NAME_LEN ; 
 struct ccp_device* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct ccp_device *FUNC6(struct sp_device *sp)
{
	struct device *dev = sp->dev;
	struct ccp_device *ccp;

	ccp = FUNC1(dev, sizeof(*ccp), GFP_KERNEL);
	if (!ccp)
		return NULL;
	ccp->dev = dev;
	ccp->sp = sp;
	ccp->axcache = sp->axcache;

	FUNC0(&ccp->cmd);
	FUNC0(&ccp->backlog);

	FUNC5(&ccp->cmd_lock);
	FUNC3(&ccp->req_mutex);
	FUNC3(&ccp->sb_mutex);
	ccp->sb_count = KSB_COUNT;
	ccp->sb_start = 0;

	/* Initialize the wait queues */
	FUNC2(&ccp->sb_queue);
	FUNC2(&ccp->suspend_queue);

	FUNC4(ccp->name, MAX_CCP_NAME_LEN, "ccp-%u", sp->ord);
	FUNC4(ccp->rngname, MAX_CCP_NAME_LEN, "ccp-%u-rng", sp->ord);

	return ccp;
}
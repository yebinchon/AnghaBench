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
struct device {int dummy; } ;
struct cc_req_mgr_handle {int /*<<< orphan*/  comptask; int /*<<< orphan*/  bl_lock; int /*<<< orphan*/  bl_len; int /*<<< orphan*/  backlog; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_bl_item {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cc_drvdata *drvdata,
			       struct cc_bl_item *bli)
{
	struct cc_req_mgr_handle *mgr = drvdata->request_mgr_handle;
	struct device *dev = FUNC1(drvdata);

	FUNC3(&mgr->bl_lock);
	FUNC2(&bli->list, &mgr->backlog);
	++mgr->bl_len;
	FUNC0(dev, "+++bl len: %d\n", mgr->bl_len);
	FUNC4(&mgr->bl_lock);
	FUNC5(&mgr->comptask);
}
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
struct md_cluster_info {int /*<<< orphan*/  wait; int /*<<< orphan*/  state; TYPE_1__* token_lockres; int /*<<< orphan*/  recv_mutex; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ DLM_LOCK_EX ; 
 int /*<<< orphan*/  MD_CLUSTER_SEND_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct md_cluster_info *cinfo)
{
	FUNC0(cinfo->token_lockres->mode != DLM_LOCK_EX);
	FUNC3(&cinfo->recv_mutex);
	FUNC2(cinfo->token_lockres);
	FUNC1(MD_CLUSTER_SEND_LOCK, &cinfo->state);
	FUNC4(&cinfo->wait);
}
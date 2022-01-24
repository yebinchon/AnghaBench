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
struct nitrox_softreq {int /*<<< orphan*/  status; int /*<<< orphan*/  backlog; } ;
struct nitrox_cmdq {int /*<<< orphan*/  backlog_qlock; int /*<<< orphan*/  backlog_count; int /*<<< orphan*/  backlog_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REQ_BACKLOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct nitrox_softreq *sr,
				    struct nitrox_cmdq *cmdq)
{
	FUNC0(&sr->backlog);

	FUNC4(&cmdq->backlog_qlock);
	FUNC3(&sr->backlog, &cmdq->backlog_head);
	FUNC1(&cmdq->backlog_count);
	FUNC2(&sr->status, REQ_BACKLOG);
	FUNC5(&cmdq->backlog_qlock);
}
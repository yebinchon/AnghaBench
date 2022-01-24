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
struct nitrox_softreq {int /*<<< orphan*/  response; } ;
struct nitrox_cmdq {int /*<<< orphan*/  resp_qlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct nitrox_softreq *sr,
				     struct nitrox_cmdq *cmdq)
{
	FUNC1(&cmdq->resp_qlock);
	FUNC0(&sr->response);
	FUNC2(&cmdq->resp_qlock);
}
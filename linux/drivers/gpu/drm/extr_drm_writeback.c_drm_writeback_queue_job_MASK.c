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
struct drm_writeback_job {int /*<<< orphan*/  list_entry; } ;
struct drm_writeback_connector {int /*<<< orphan*/  job_lock; int /*<<< orphan*/  job_queue; } ;
struct drm_connector_state {struct drm_writeback_job* writeback_job; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct drm_writeback_connector *wb_connector,
			     struct drm_connector_state *conn_state)
{
	struct drm_writeback_job *job;
	unsigned long flags;

	job = conn_state->writeback_job;
	conn_state->writeback_job = NULL;

	FUNC1(&wb_connector->job_lock, flags);
	FUNC0(&job->list_entry, &wb_connector->job_queue);
	FUNC2(&wb_connector->job_lock, flags);
}
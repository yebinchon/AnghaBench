
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_writeback_job {int list_entry; } ;
struct drm_writeback_connector {int job_lock; int job_queue; } ;
struct drm_connector_state {struct drm_writeback_job* writeback_job; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
        struct drm_connector_state *conn_state)
{
 struct drm_writeback_job *job;
 unsigned long flags;

 job = conn_state->writeback_job;
 conn_state->writeback_job = ((void*)0);

 spin_lock_irqsave(&wb_connector->job_lock, flags);
 list_add_tail(&job->list_entry, &wb_connector->job_queue);
 spin_unlock_irqrestore(&wb_connector->job_lock, flags);
}

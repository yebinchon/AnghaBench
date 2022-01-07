
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int pipe; int queue; } ;
struct device_queue_manager {int next_pipe_to_allocate; int* allocated_queues; } ;


 int EBUSY ;
 int ffs (int) ;
 int get_pipes_per_mec (struct device_queue_manager*) ;
 int is_pipe_enabled (struct device_queue_manager*,int ,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static int allocate_hqd(struct device_queue_manager *dqm, struct queue *q)
{
 bool set;
 int pipe, bit, i;

 set = 0;

 for (pipe = dqm->next_pipe_to_allocate, i = 0;
   i < get_pipes_per_mec(dqm);
   pipe = ((pipe + 1) % get_pipes_per_mec(dqm)), ++i) {

  if (!is_pipe_enabled(dqm, 0, pipe))
   continue;

  if (dqm->allocated_queues[pipe] != 0) {
   bit = ffs(dqm->allocated_queues[pipe]) - 1;
   dqm->allocated_queues[pipe] &= ~(1 << bit);
   q->pipe = pipe;
   q->queue = bit;
   set = 1;
   break;
  }
 }

 if (!set)
  return -EBUSY;

 pr_debug("hqd slot - pipe %d, queue %d\n", q->pipe, q->queue);

 dqm->next_pipe_to_allocate = (pipe + 1) % get_pipes_per_mec(dqm);

 return 0;
}

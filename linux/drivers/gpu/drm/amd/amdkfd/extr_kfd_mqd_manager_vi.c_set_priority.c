
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_mqd {size_t cp_hqd_queue_priority; int cp_hqd_pipe_priority; } ;
struct queue_properties {size_t priority; } ;


 int * pipe_priority_map ;

__attribute__((used)) static void set_priority(struct vi_mqd *m, struct queue_properties *q)
{
 m->cp_hqd_pipe_priority = pipe_priority_map[q->priority];
 m->cp_hqd_queue_priority = q->priority;
}

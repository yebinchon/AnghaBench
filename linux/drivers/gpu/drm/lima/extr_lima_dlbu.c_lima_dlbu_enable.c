
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {struct lima_ip** processor; } ;
struct lima_ip {int id; } ;
struct lima_device {struct lima_ip* ip; struct lima_sched_pipe* pipe; } ;


 int LIMA_DLBU_PP_ENABLE_MASK ;
 int dlbu_write (int ,int) ;
 int lima_ip_dlbu ;
 int lima_ip_pp0 ;
 int lima_pipe_pp ;

void lima_dlbu_enable(struct lima_device *dev, int num_pp)
{
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
 struct lima_ip *ip = dev->ip + lima_ip_dlbu;
 int i, mask = 0;

 for (i = 0; i < num_pp; i++) {
  struct lima_ip *pp = pipe->processor[i];

  mask |= 1 << (pp->id - lima_ip_pp0);
 }

 dlbu_write(LIMA_DLBU_PP_ENABLE_MASK, mask);
}

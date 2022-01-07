
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {struct lima_ip** processor; } ;
struct lima_ip {int id; } ;
struct lima_device {struct lima_ip* ip; struct lima_sched_pipe* pipe; } ;


 int LIMA_BCAST_BROADCAST_MASK ;
 int bcast_read (int ) ;
 int bcast_write (int ,int) ;
 int lima_ip_bcast ;
 int lima_ip_pp0 ;
 int lima_pipe_pp ;

void lima_bcast_enable(struct lima_device *dev, int num_pp)
{
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
 struct lima_ip *ip = dev->ip + lima_ip_bcast;
 int i, mask = bcast_read(LIMA_BCAST_BROADCAST_MASK) & 0xffff0000;

 for (i = 0; i < num_pp; i++) {
  struct lima_ip *pp = pipe->processor[i];

  mask |= 1 << (pp->id - lima_ip_pp0);
 }

 bcast_write(LIMA_BCAST_BROADCAST_MASK, mask);
}

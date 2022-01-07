
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct sur40_state {scalar_t__ sequence; } ;


 struct sur40_state* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int sur40_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct sur40_state *sur40 = vb2_get_drv_priv(vq);

 sur40->sequence = 0;
 return 0;
}

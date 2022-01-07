
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct sur40_state {int sequence; } ;


 int VB2_BUF_STATE_ERROR ;
 int return_all_buffers (struct sur40_state*,int ) ;
 struct sur40_state* vb2_get_drv_priv (struct vb2_queue*) ;
 int vb2_wait_for_all_buffers (struct vb2_queue*) ;

__attribute__((used)) static void sur40_stop_streaming(struct vb2_queue *vq)
{
 struct sur40_state *sur40 = vb2_get_drv_priv(vq);
 vb2_wait_for_all_buffers(vq);
 sur40->sequence = -1;


 return_all_buffers(sur40, VB2_BUF_STATE_ERROR);
}

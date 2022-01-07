
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct sur40_state {int qlock; int buf_list; } ;
struct sur40_buffer {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sur40_state* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void sur40_buffer_queue(struct vb2_buffer *vb)
{
 struct sur40_state *sur40 = vb2_get_drv_priv(vb->vb2_queue);
 struct sur40_buffer *buf = (struct sur40_buffer *)vb;

 spin_lock(&sur40->qlock);
 list_add_tail(&buf->list, &sur40->buf_list);
 spin_unlock(&sur40->qlock);
}

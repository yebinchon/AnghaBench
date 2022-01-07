
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct v4l2_exportbuffer {int flags; int plane; int index; int type; int fd; } ;


 int vb2_core_expbuf (struct vb2_queue*,int *,int ,int ,int ,int ) ;

int vb2_expbuf(struct vb2_queue *q, struct v4l2_exportbuffer *eb)
{
 return vb2_core_expbuf(q, &eb->fd, eb->type, eb->index,
    eb->plane, eb->flags);
}

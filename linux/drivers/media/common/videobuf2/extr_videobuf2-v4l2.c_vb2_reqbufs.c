
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct v4l2_requestbuffers {int count; int memory; int capabilities; int type; } ;


 int fill_buf_caps (struct vb2_queue*,int *) ;
 int vb2_core_reqbufs (struct vb2_queue*,int ,int *) ;
 int vb2_verify_memory_type (struct vb2_queue*,int ,int ) ;

int vb2_reqbufs(struct vb2_queue *q, struct v4l2_requestbuffers *req)
{
 int ret = vb2_verify_memory_type(q, req->memory, req->type);

 fill_buf_caps(q, &req->capabilities);
 return ret ? ret : vb2_core_reqbufs(q, req->memory, &req->count);
}

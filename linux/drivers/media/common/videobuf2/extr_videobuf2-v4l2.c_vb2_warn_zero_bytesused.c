
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct TYPE_2__ {scalar_t__ allow_zero_bytesused; } ;


 int pr_warn (char*) ;

__attribute__((used)) static void vb2_warn_zero_bytesused(struct vb2_buffer *vb)
{
 static bool check_once;

 if (check_once)
  return;

 check_once = 1;

 pr_warn("use of bytesused == 0 is deprecated and will be removed in the future,\n");
 if (vb->vb2_queue->allow_zero_bytesused)
  pr_warn("use VIDIOC_DECODER_CMD(V4L2_DEC_CMD_STOP) instead.\n");
 else
  pr_warn("use the actual size instead.\n");
}

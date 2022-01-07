
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int streamId; int cmdType; } ;
struct vmw_escape_video_flush {TYPE_1__ flush; int escape; } ;


 int SVGA_ESCAPE_VMWARE_VIDEO_FLUSH ;
 int fill_escape (int *,int) ;

__attribute__((used)) static inline void fill_flush(struct vmw_escape_video_flush *cmd,
         uint32_t stream_id)
{
 fill_escape(&cmd->escape, sizeof(cmd->flush));
 cmd->flush.cmdType = SVGA_ESCAPE_VMWARE_VIDEO_FLUSH;
 cmd->flush.streamId = stream_id;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int size; int nsid; } ;
struct vmw_escape_header {TYPE_1__ body; int cmd; } ;


 int SVGA_CMD_ESCAPE ;
 int SVGA_ESCAPE_NSID_VMWARE ;

__attribute__((used)) static inline void fill_escape(struct vmw_escape_header *header,
          uint32_t size)
{
 header->cmd = SVGA_CMD_ESCAPE;
 header->body.nsid = SVGA_ESCAPE_NSID_VMWARE;
 header->body.size = size;
}

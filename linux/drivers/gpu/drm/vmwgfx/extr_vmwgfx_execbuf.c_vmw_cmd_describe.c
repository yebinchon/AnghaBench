
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vmw_cmd_entry {char* cmd_name; } ;
struct TYPE_2__ {size_t size; size_t id; } ;
typedef int SVGAFifoCmdUpdate ;
typedef int SVGAFifoCmdDefineGMRFB ;
typedef int SVGAFifoCmdBlitGMRFBToScreen ;
typedef TYPE_1__ SVGA3dCmdHeader ;


 scalar_t__ SVGA_3D_CMD_BASE ;
 size_t SVGA_3D_CMD_MAX ;



 size_t SVGA_CMD_MAX ;

 struct vmw_cmd_entry* vmw_cmd_entries ;

bool vmw_cmd_describe(const void *buf, u32 *size, char const **cmd)
{
 u32 cmd_id = ((u32 *) buf)[0];

 if (cmd_id >= SVGA_CMD_MAX) {
  SVGA3dCmdHeader *header = (SVGA3dCmdHeader *) buf;
  const struct vmw_cmd_entry *entry;

  *size = header->size + sizeof(SVGA3dCmdHeader);
  cmd_id = header->id;
  if (cmd_id >= SVGA_3D_CMD_MAX)
   return 0;

  cmd_id -= SVGA_3D_CMD_BASE;
  entry = &vmw_cmd_entries[cmd_id];
  *cmd = entry->cmd_name;
  return 1;
 }

 switch (cmd_id) {
 case 128:
  *cmd = "SVGA_CMD_UPDATE";
  *size = sizeof(u32) + sizeof(SVGAFifoCmdUpdate);
  break;
 case 129:
  *cmd = "SVGA_CMD_DEFINE_GMRFB";
  *size = sizeof(u32) + sizeof(SVGAFifoCmdDefineGMRFB);
  break;
 case 131:
  *cmd = "SVGA_CMD_BLIT_GMRFB_TO_SCREEN";
  *size = sizeof(u32) + sizeof(SVGAFifoCmdBlitGMRFBToScreen);
  break;
 case 130:
  *cmd = "SVGA_CMD_BLIT_SCREEN_TO_GMRFB";
  *size = sizeof(u32) + sizeof(SVGAFifoCmdBlitGMRFBToScreen);
  break;
 default:
  *cmd = "UNKNOWN";
  *size = 0;
  return 0;
 }

 return 1;
}

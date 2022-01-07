
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dce_mem_input {int dummy; } ;
struct TYPE_4__ {int luma_addr; int chroma_addr; } ;
struct TYPE_3__ {int addr; } ;
struct dc_plane_address {int type; TYPE_2__ video_progressive; TYPE_1__ grph; } ;


 int BREAK_TO_DEBUGGER () ;


 int program_pri_addr_c (struct dce_mem_input*,int ) ;
 int program_pri_addr_l (struct dce_mem_input*,int ) ;

__attribute__((used)) static void program_addr(
 struct dce_mem_input *mem_input110,
 const struct dc_plane_address *addr)
{
 switch (addr->type) {
 case 129:
  program_pri_addr_l(
   mem_input110,
   addr->grph.addr);
  break;
 case 128:
  program_pri_addr_c(
   mem_input110,
   addr->video_progressive.chroma_addr);
  program_pri_addr_l(
   mem_input110,
   addr->video_progressive.luma_addr);
  break;
 default:

  BREAK_TO_DEBUGGER();
 }
}

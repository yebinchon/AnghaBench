
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_atapi_pc {int* c; int req_xfer; } ;


 int IDETAPE_BLOCK_DESCRIPTOR ;
 int IDETAPE_CAPABILITIES_PAGE ;
 int MODE_SENSE ;
 int ide_init_pc (struct ide_atapi_pc*) ;

__attribute__((used)) static void idetape_create_mode_sense_cmd(struct ide_atapi_pc *pc, u8 page_code)
{
 ide_init_pc(pc);
 pc->c[0] = MODE_SENSE;
 if (page_code != IDETAPE_BLOCK_DESCRIPTOR)

  pc->c[1] = 8;
 pc->c[2] = page_code;







 pc->c[3] = 0;

 pc->c[4] = 255;
 if (page_code == IDETAPE_BLOCK_DESCRIPTOR)
  pc->req_xfer = 12;
 else if (page_code == IDETAPE_CAPABILITIES_PAGE)
  pc->req_xfer = 24;
 else
  pc->req_xfer = 50;
}

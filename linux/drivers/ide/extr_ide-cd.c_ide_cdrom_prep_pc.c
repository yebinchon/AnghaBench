
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct request {int dummy; } ;
struct TYPE_2__ {int* cmd; int cmd_len; int result; } ;


 int ILLEGAL_REQUEST ;
 int MODE_SELECT ;
 int MODE_SENSE ;
 int READ_10 ;
 int READ_6 ;
 int WRITE_6 ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static bool ide_cdrom_prep_pc(struct request *rq)
{
 u8 *c = scsi_req(rq)->cmd;


 if (c[0] == READ_6 || c[0] == WRITE_6) {
  c[8] = c[4];
  c[5] = c[3];
  c[4] = c[2];
  c[3] = c[1] & 0x1f;
  c[2] = 0;
  c[1] &= 0xe0;
  c[0] += (READ_10 - READ_6);
  scsi_req(rq)->cmd_len = 10;
  return 1;
 }






 if (c[0] == MODE_SENSE || c[0] == MODE_SELECT) {
  scsi_req(rq)->result = ILLEGAL_REQUEST;
  return 0;
 }

 return 1;
}

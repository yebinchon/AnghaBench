
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct request {int rq_flags; int timeout; } ;
struct cdrom_info {int disk; } ;
typedef int req_flags_t ;
struct TYPE_6__ {int queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {unsigned int resid_len; int sense_len; int sense; scalar_t__ result; int cmd; } ;


 int ATA_PRIV_PC ;
 int BLK_MAX_CDB ;
 int EIO ;
 int GFP_NOIO ;
 int IDE_DBG_PC ;
 scalar_t__ NOT_READY ;
 int REQ_OP_DRV_IN ;
 int REQ_OP_DRV_OUT ;
 int RQF_FAILED ;
 scalar_t__ UNIT_ATTENTION ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 int cdrom_saw_media_change (TYPE_1__*) ;
 int ide_debug_log (int ,char*,unsigned char const,int,int,int) ;
 TYPE_3__* ide_req (struct request*) ;
 int memcpy (int ,unsigned char const*,int ) ;
 int scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;
 TYPE_2__* scsi_req (struct request*) ;
 int ssleep (int) ;

int ide_cd_queue_pc(ide_drive_t *drive, const unsigned char *cmd,
      int write, void *buffer, unsigned *bufflen,
      struct scsi_sense_hdr *sshdr, int timeout,
      req_flags_t rq_flags)
{
 struct cdrom_info *info = drive->driver_data;
 struct scsi_sense_hdr local_sshdr;
 int retries = 10;
 bool failed;

 ide_debug_log(IDE_DBG_PC, "cmd[0]: 0x%x, write: 0x%x, timeout: %d, "
      "rq_flags: 0x%x",
      cmd[0], write, timeout, rq_flags);

 if (!sshdr)
  sshdr = &local_sshdr;


 do {
  struct request *rq;
  int error;
  bool delay = 0;

  rq = blk_get_request(drive->queue,
   write ? REQ_OP_DRV_OUT : REQ_OP_DRV_IN, 0);
  memcpy(scsi_req(rq)->cmd, cmd, BLK_MAX_CDB);
  ide_req(rq)->type = ATA_PRIV_PC;
  rq->rq_flags |= rq_flags;
  rq->timeout = timeout;
  if (buffer) {
   error = blk_rq_map_kern(drive->queue, rq, buffer,
      *bufflen, GFP_NOIO);
   if (error) {
    blk_put_request(rq);
    return error;
   }
  }

  blk_execute_rq(drive->queue, info->disk, rq, 0);
  error = scsi_req(rq)->result ? -EIO : 0;

  if (buffer)
   *bufflen = scsi_req(rq)->resid_len;
  scsi_normalize_sense(scsi_req(rq)->sense,
         scsi_req(rq)->sense_len, sshdr);





  failed = (rq->rq_flags & RQF_FAILED) != 0;
  if (failed) {




   if (sshdr->sense_key == UNIT_ATTENTION)
    cdrom_saw_media_change(drive);
   else if (sshdr->sense_key == NOT_READY &&
     sshdr->asc == 4 && sshdr->ascq != 4) {





    delay = 1;
   } else {

    retries = 0;
   }
   --retries;
  }
  blk_put_request(rq);
  if (delay)
   ssleep(2);
 } while (failed && retries >= 0);


 return failed ? -EIO : 0;
}

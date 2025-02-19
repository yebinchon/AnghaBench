
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct request {int dummy; } ;
struct TYPE_12__ {scalar_t__ nsect; } ;
struct ide_cmd {int tf_flags; TYPE_2__ tf; } ;
struct TYPE_13__ {TYPE_1__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_14__ {scalar_t__ result; } ;
struct TYPE_11__ {struct request* rq; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int IDE_TFLAG_SET_XFER ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_cmd (TYPE_3__*,struct ide_cmd*,scalar_t__,scalar_t__) ;
 int ide_complete_rq (TYPE_3__*,int ,int ) ;
 int ide_driveid_update (TYPE_3__*) ;
 scalar_t__ ide_read_error (TYPE_3__*) ;
 int ide_set_xfer_rate (TYPE_3__*,scalar_t__) ;
 TYPE_4__* scsi_req (struct request*) ;

void ide_finish_cmd(ide_drive_t *drive, struct ide_cmd *cmd, u8 stat)
{
 struct request *rq = drive->hwif->rq;
 u8 err = ide_read_error(drive), nsect = cmd->tf.nsect;
 u8 set_xfer = !!(cmd->tf_flags & IDE_TFLAG_SET_XFER);

 ide_complete_cmd(drive, cmd, stat, err);
 scsi_req(rq)->result = err;

 if (err == 0 && set_xfer) {
  ide_set_xfer_rate(drive, nsect);
  ide_driveid_update(drive);
 }

 ide_complete_rq(drive, err ? BLK_STS_IOERR : BLK_STS_OK, blk_rq_bytes(rq));
}

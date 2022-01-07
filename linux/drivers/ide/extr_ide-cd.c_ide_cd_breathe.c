
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct cdrom_info {scalar_t__ write_timeout; } ;
struct TYPE_4__ {int queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_5__ {int result; } ;


 scalar_t__ ATAPI_WAIT_WRITE_BUSY ;
 int blk_mq_delay_kick_requeue_list (int ,int) ;
 int blk_mq_requeue_request (struct request*,int) ;
 scalar_t__ jiffies ;
 TYPE_2__* scsi_req (struct request*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ide_cd_breathe(ide_drive_t *drive, struct request *rq)
{

 struct cdrom_info *info = drive->driver_data;

 if (!scsi_req(rq)->result)
  info->write_timeout = jiffies + ATAPI_WAIT_WRITE_BUSY;

 scsi_req(rq)->result = 1;

 if (time_after(jiffies, info->write_timeout))
  return 0;
 else {



  blk_mq_requeue_request(rq, 0);
  blk_mq_delay_kick_requeue_list(drive->queue, 1);
  return 1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct request {int dummy; } ;
struct ide_cmd {int sg_nents; struct request* rq; } ;
struct TYPE_4__ {struct scatterlist* sg_table; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int queue; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int blk_rq_map_sg (int ,struct request*,struct scatterlist*) ;

void ide_map_sg(ide_drive_t *drive, struct ide_cmd *cmd)
{
 ide_hwif_t *hwif = drive->hwif;
 struct scatterlist *sg = hwif->sg_table;
 struct request *rq = cmd->rq;

 cmd->sg_nents = blk_rq_map_sg(drive->queue, rq, sg);
}

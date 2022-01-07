
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {int dummy; } ;
typedef int sector_t ;
typedef int ide_startstop_t ;
struct TYPE_6__ {TYPE_1__* disk_ops; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int (* do_request ) (TYPE_2__*,struct request*,int ) ;} ;


 int stub1 (TYPE_2__*,struct request*,int ) ;

__attribute__((used)) static ide_startstop_t ide_gd_do_request(ide_drive_t *drive,
      struct request *rq, sector_t sector)
{
 return drive->disk_ops->do_request(drive, rq, sector);
}

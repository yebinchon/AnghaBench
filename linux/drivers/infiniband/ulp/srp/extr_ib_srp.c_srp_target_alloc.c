
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {scalar_t__ target_can_queue; } ;
struct TYPE_2__ {int parent; } ;
struct scsi_target {scalar_t__ can_queue; TYPE_1__ dev; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 struct srp_target_port* host_to_target (struct Scsi_Host*) ;

__attribute__((used)) static int srp_target_alloc(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct srp_target_port *target = host_to_target(shost);

 if (target->target_can_queue)
  starget->can_queue = target->target_can_queue;
 return 0;
}

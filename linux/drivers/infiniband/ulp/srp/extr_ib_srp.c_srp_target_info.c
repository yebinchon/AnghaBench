
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {char const* target_name; } ;


 TYPE_1__* host_to_target (struct Scsi_Host*) ;

__attribute__((used)) static const char *srp_target_info(struct Scsi_Host *host)
{
 return host_to_target(host)->target_name;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssi_protocol {TYPE_1__* cl; } ;
struct hsi_client {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int dev_err (int *,char*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int ssip_error (TYPE_1__*) ;

void ssip_reset_event(struct hsi_client *master)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(master);
 dev_err(&ssi->cl->device, "CMT reset detected!\n");
 ssip_error(ssi->cl);
}

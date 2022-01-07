
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli {int notifys; int objects; } ;


 int INIT_LIST_HEAD (int *) ;

void
usif_client_init(struct nouveau_cli *cli)
{
 INIT_LIST_HEAD(&cli->objects);
 INIT_LIST_HEAD(&cli->notifys);
}

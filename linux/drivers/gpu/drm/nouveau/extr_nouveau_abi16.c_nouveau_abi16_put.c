
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_cli {int mutex; } ;
struct TYPE_3__ {scalar_t__ client; } ;
struct TYPE_4__ {TYPE_1__ object; } ;
struct nouveau_abi16 {TYPE_2__ device; } ;


 int mutex_unlock (int *) ;

int
nouveau_abi16_put(struct nouveau_abi16 *abi16, int ret)
{
 struct nouveau_cli *cli = (void *)abi16->device.object.client;
 mutex_unlock(&cli->mutex);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
struct TYPE_5__ {int * drm; } ;
struct vic {TYPE_3__ falcon; TYPE_2__* config; TYPE_1__ client; } ;
struct TYPE_6__ {int firmware; } ;


 int falcon_load_firmware (TYPE_3__*) ;
 int falcon_read_firmware (TYPE_3__*,int ) ;

__attribute__((used)) static int vic_load_firmware(struct vic *vic)
{
 int err;

 if (vic->falcon.data)
  return 0;

 vic->falcon.data = vic->client.drm;

 err = falcon_read_firmware(&vic->falcon, vic->config->firmware);
 if (err < 0)
  goto cleanup;

 err = falcon_load_firmware(&vic->falcon);
 if (err < 0)
  goto cleanup;

 return 0;

cleanup:
 vic->falcon.data = ((void*)0);
 return err;
}

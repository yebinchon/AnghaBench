
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int mxt_configure_objects (void*,struct firmware const*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void mxt_config_cb(const struct firmware *cfg, void *ctx)
{
 mxt_configure_objects(ctx, cfg);
 release_firmware(cfg);
}

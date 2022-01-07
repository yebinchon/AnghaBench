
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware {int size; } ;
struct TYPE_4__ {int vaddr; int paddr; int size; struct firmware* firmware; } ;
struct falcon {TYPE_2__ firmware; TYPE_1__* ops; int dev; } ;
struct TYPE_3__ {int (* free ) (struct falcon*,int ,int ,int ) ;int (* alloc ) (struct falcon*,int ,int *) ;} ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int falcon_copy_firmware_image (struct falcon*,struct firmware const*) ;
 int falcon_parse_firmware_image (struct falcon*) ;
 int release_firmware (struct firmware const*) ;
 int stub1 (struct falcon*,int ,int *) ;
 int stub2 (struct falcon*,int ,int ,int ) ;

int falcon_load_firmware(struct falcon *falcon)
{
 const struct firmware *firmware = falcon->firmware.firmware;
 int err;

 falcon->firmware.size = firmware->size;


 falcon->firmware.vaddr = falcon->ops->alloc(falcon, firmware->size,
          &falcon->firmware.paddr);
 if (IS_ERR(falcon->firmware.vaddr)) {
  dev_err(falcon->dev, "DMA memory mapping failed\n");
  return PTR_ERR(falcon->firmware.vaddr);
 }


 falcon_copy_firmware_image(falcon, firmware);


 err = falcon_parse_firmware_image(falcon);
 if (err < 0) {
  dev_err(falcon->dev, "failed to parse firmware image\n");
  goto err_setup_firmware_image;
 }

 release_firmware(firmware);
 falcon->firmware.firmware = ((void*)0);

 return 0;

err_setup_firmware_image:
 falcon->ops->free(falcon, falcon->firmware.size,
     falcon->firmware.paddr, falcon->firmware.vaddr);

 return err;
}

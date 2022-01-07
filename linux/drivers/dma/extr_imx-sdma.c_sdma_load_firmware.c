
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_script_start_addrs {int ram_code_start_addr; } ;
struct sdma_firmware_header {scalar_t__ magic; int ram_code_start; int ram_code_size; int version_major; int script_addrs_start; int version_minor; } ;
struct sdma_engine {int dev; int clk_ahb; int clk_ipg; int script_number; } ;
struct firmware {int size; scalar_t__ data; } ;


 scalar_t__ SDMA_FIRMWARE_MAGIC ;
 int SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1 ;
 int SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2 ;
 int SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3 ;
 int SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4 ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 int release_firmware (struct firmware const*) ;
 int sdma_add_scripts (struct sdma_engine*,struct sdma_script_start_addrs const*) ;
 int sdma_load_script (struct sdma_engine*,unsigned short*,int,int ) ;

__attribute__((used)) static void sdma_load_firmware(const struct firmware *fw, void *context)
{
 struct sdma_engine *sdma = context;
 const struct sdma_firmware_header *header;
 const struct sdma_script_start_addrs *addr;
 unsigned short *ram_code;

 if (!fw) {
  dev_info(sdma->dev, "external firmware not found, using ROM firmware\n");

  return;
 }

 if (fw->size < sizeof(*header))
  goto err_firmware;

 header = (struct sdma_firmware_header *)fw->data;

 if (header->magic != SDMA_FIRMWARE_MAGIC)
  goto err_firmware;
 if (header->ram_code_start + header->ram_code_size > fw->size)
  goto err_firmware;
 switch (header->version_major) {
 case 1:
  sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1;
  break;
 case 2:
  sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2;
  break;
 case 3:
  sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3;
  break;
 case 4:
  sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4;
  break;
 default:
  dev_err(sdma->dev, "unknown firmware version\n");
  goto err_firmware;
 }

 addr = (void *)header + header->script_addrs_start;
 ram_code = (void *)header + header->ram_code_start;

 clk_enable(sdma->clk_ipg);
 clk_enable(sdma->clk_ahb);

 sdma_load_script(sdma, ram_code,
   header->ram_code_size,
   addr->ram_code_start_addr);
 clk_disable(sdma->clk_ipg);
 clk_disable(sdma->clk_ahb);

 sdma_add_scripts(sdma, addr);

 dev_info(sdma->dev, "loaded firmware %d.%d\n",
   header->version_major,
   header->version_minor);

err_firmware:
 release_firmware(fw);
}

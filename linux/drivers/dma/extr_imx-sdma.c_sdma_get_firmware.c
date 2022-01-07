
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dev; } ;


 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int request_firmware_nowait (int ,int ,char const*,int ,int ,struct sdma_engine*,int ) ;
 int sdma_load_firmware ;

__attribute__((used)) static int sdma_get_firmware(struct sdma_engine *sdma,
  const char *fw_name)
{
 int ret;

 ret = request_firmware_nowait(THIS_MODULE,
   FW_ACTION_HOTPLUG, fw_name, sdma->dev,
   GFP_KERNEL, sdma, sdma_load_firmware);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_instances; TYPE_1__* instance; } ;
struct amdgpu_device {int asic_type; TYPE_2__ sdma; int dev; } ;
typedef int fw_name ;
struct TYPE_3__ {int * fw; } ;


 int BUG () ;





 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (int *) ;
 int pr_err (char*,char*) ;
 int release_firmware (int *) ;
 int request_firmware (int **,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int cik_sdma_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 char fw_name[30];
 int err = 0, i;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 132:
  chip_name = "bonaire";
  break;
 case 131:
  chip_name = "hawaii";
  break;
 case 129:
  chip_name = "kaveri";
  break;
 case 130:
  chip_name = "kabini";
  break;
 case 128:
  chip_name = "mullins";
  break;
 default: BUG();
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (i == 0)
   snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma.bin", chip_name);
  else
   snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_sdma1.bin", chip_name);
  err = request_firmware(&adev->sdma.instance[i].fw, fw_name, adev->dev);
  if (err)
   goto out;
  err = amdgpu_ucode_validate(adev->sdma.instance[i].fw);
 }
out:
 if (err) {
  pr_err("cik_sdma: Failed to load firmware \"%s\"\n", fw_name);
  for (i = 0; i < adev->sdma.num_instances; i++) {
   release_firmware(adev->sdma.instance[i].fw);
   adev->sdma.instance[i].fw = ((void*)0);
  }
 }
 return err;
}

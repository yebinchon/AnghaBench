
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct of_device_id {int compatible; } ;
struct malidp_hw_device {int dummy; } ;
typedef int buf ;


 int DRM_ERROR (char*,int ,...) ;
 scalar_t__ MALIDP500_DC_BASE ;
 scalar_t__ MALIDP550_DC_BASE ;
 scalar_t__ MALIDP_DE_CORE_ID ;
 int MALIDP_PRODUCT_ID (int ) ;
 int malidp_hw_read (struct malidp_hw_device*,scalar_t__) ;
 int snprintf (char*,int,char*,int) ;
 int * strnstr (int ,char const*,int) ;

__attribute__((used)) static bool malidp_is_compatible_hw_id(struct malidp_hw_device *hwdev,
           const struct of_device_id *dev_id)
{
 u32 core_id;
 const char *compatstr_dp500 = "arm,mali-dp500";
 bool is_dp500;
 bool dt_is_dp500;






 core_id = malidp_hw_read(hwdev, MALIDP500_DC_BASE + MALIDP_DE_CORE_ID);

 is_dp500 = (MALIDP_PRODUCT_ID(core_id) == 0x500);
 dt_is_dp500 = strnstr(dev_id->compatible, compatstr_dp500,
         sizeof(dev_id->compatible)) != ((void*)0);
 if (is_dp500 != dt_is_dp500) {
  DRM_ERROR("Device-tree expects %s, but hardware %s DP500.\n",
     dev_id->compatible, is_dp500 ? "is" : "is not");
  return 0;
 } else if (!dt_is_dp500) {
  u16 product_id;
  char buf[32];

  core_id = malidp_hw_read(hwdev,
      MALIDP550_DC_BASE + MALIDP_DE_CORE_ID);
  product_id = MALIDP_PRODUCT_ID(core_id);
  snprintf(buf, sizeof(buf), "arm,mali-dp%X", product_id);
  if (!strnstr(dev_id->compatible, buf,
        sizeof(dev_id->compatible))) {
   DRM_ERROR("Device-tree expects %s, but hardware is DP%03X.\n",
      dev_id->compatible, product_id);
   return 0;
  }
 }
 return 1;
}

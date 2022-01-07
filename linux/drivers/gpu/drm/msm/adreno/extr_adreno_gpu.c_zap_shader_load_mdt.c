
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct msm_gpu {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
typedef int ssize_t ;
typedef int phys_addr_t ;
struct TYPE_5__ {scalar_t__ fwloc; } ;
struct TYPE_4__ {struct device dev; } ;


 int CONFIG_ARCH_QCOM ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int E2BIG ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ FW_LOCATION_LEGACY ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct firmware const*) ;
 int MEMREMAP_WC ;
 int PTR_ERR (struct firmware const*) ;
 struct firmware* adreno_request_fw (TYPE_2__*,char const*) ;
 char* kasprintf (int ,char*,char const*) ;
 int kfree (char*) ;
 void* memremap (int ,int,int ) ;
 int memunmap (void*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int qcom_mdt_get_size (struct firmware const*) ;
 int qcom_mdt_load (struct device*,struct firmware const*,char const*,int ,void*,int ,int,int *) ;
 int qcom_scm_pas_auth_and_reset (int ) ;
 int release_firmware (struct firmware const*) ;
 int resource_size (struct resource*) ;
 TYPE_2__* to_adreno_gpu (struct msm_gpu*) ;
 int zap_available ;

__attribute__((used)) static int zap_shader_load_mdt(struct msm_gpu *gpu, const char *fwname,
  u32 pasid)
{
 struct device *dev = &gpu->pdev->dev;
 const struct firmware *fw;
 struct device_node *np, *mem_np;
 struct resource r;
 phys_addr_t mem_phys;
 ssize_t mem_size;
 void *mem_region = ((void*)0);
 int ret;

 if (!IS_ENABLED(CONFIG_ARCH_QCOM)) {
  zap_available = 0;
  return -EINVAL;
 }

 np = of_get_child_by_name(dev->of_node, "zap-shader");
 if (!np) {
  zap_available = 0;
  return -ENODEV;
 }

 mem_np = of_parse_phandle(np, "memory-region", 0);
 of_node_put(np);
 if (!mem_np) {
  zap_available = 0;
  return -EINVAL;
 }

 ret = of_address_to_resource(mem_np, 0, &r);
 of_node_put(mem_np);
 if (ret)
  return ret;

 mem_phys = r.start;


 fw = adreno_request_fw(to_adreno_gpu(gpu), fwname);
 if (IS_ERR(fw)) {
  DRM_DEV_ERROR(dev, "Unable to load %s\n", fwname);
  return PTR_ERR(fw);
 }


 mem_size = qcom_mdt_get_size(fw);
 if (mem_size < 0) {
  ret = mem_size;
  goto out;
 }

 if (mem_size > resource_size(&r)) {
  DRM_DEV_ERROR(dev,
   "memory region is too small to load the MDT\n");
  ret = -E2BIG;
  goto out;
 }


 mem_region = memremap(mem_phys, mem_size, MEMREMAP_WC);
 if (!mem_region) {
  ret = -ENOMEM;
  goto out;
 }
 if (to_adreno_gpu(gpu)->fwloc == FW_LOCATION_LEGACY) {
  ret = qcom_mdt_load(dev, fw, fwname, pasid,
    mem_region, mem_phys, mem_size, ((void*)0));
 } else {
  char *newname;

  newname = kasprintf(GFP_KERNEL, "qcom/%s", fwname);

  ret = qcom_mdt_load(dev, fw, newname, pasid,
    mem_region, mem_phys, mem_size, ((void*)0));
  kfree(newname);
 }
 if (ret)
  goto out;


 ret = qcom_scm_pas_auth_and_reset(pasid);





 if (ret == -EOPNOTSUPP)
  zap_available = 0;
 else if (ret)
  DRM_DEV_ERROR(dev, "Unable to authorize the image\n");

out:
 if (mem_region)
  memunmap(mem_region);

 release_firmware(fw);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct platform_device {int dummy; } ;
struct nvkm_device_tegra_func {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOSYS ;

int
nvkm_device_tegra_new(const struct nvkm_device_tegra_func *func,
        struct platform_device *pdev,
        const char *cfg, const char *dbg,
        bool detect, bool mmio, u64 subdev_mask,
        struct nvkm_device **pdevice)
{
 return -ENOSYS;
}

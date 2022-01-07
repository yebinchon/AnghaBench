
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mga_device {int num_crtc; int has_sdram; int* bpp_shifts; int unique_rev_id; int * rmmio; int rmmio_size; int rmmio_base; TYPE_1__* dev; int type; } ;
struct drm_device {int pdev; struct mga_device* dev_private; } ;
struct TYPE_2__ {int dev; int pdev; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 scalar_t__ IS_G200_SE (struct mga_device*) ;
 int PCI_MGA_OPTION ;
 int RREG32 (int) ;
 int devm_request_mem_region (int ,int ,int ,char*) ;
 int mga_vram_init (struct mga_device*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int * pcim_iomap (int ,int,int ) ;

__attribute__((used)) static int mgag200_device_init(struct drm_device *dev,
          uint32_t flags)
{
 struct mga_device *mdev = dev->dev_private;
 int ret, option;

 mdev->type = flags;


 mdev->num_crtc = 1;

 pci_read_config_dword(dev->pdev, PCI_MGA_OPTION, &option);
 mdev->has_sdram = !(option & (1 << 14));


 mdev->rmmio_base = pci_resource_start(mdev->dev->pdev, 1);
 mdev->rmmio_size = pci_resource_len(mdev->dev->pdev, 1);

 if (!devm_request_mem_region(mdev->dev->dev, mdev->rmmio_base, mdev->rmmio_size,
    "mgadrmfb_mmio")) {
  DRM_ERROR("can't reserve mmio registers\n");
  return -ENOMEM;
 }

 mdev->rmmio = pcim_iomap(dev->pdev, 1, 0);
 if (mdev->rmmio == ((void*)0))
  return -ENOMEM;


 if (IS_G200_SE(mdev))
  mdev->unique_rev_id = RREG32(0x1e24);

 ret = mga_vram_init(mdev);
 if (ret)
  return ret;

 mdev->bpp_shifts[0] = 0;
 mdev->bpp_shifts[1] = 1;
 mdev->bpp_shifts[2] = 0;
 mdev->bpp_shifts[3] = 2;
 return 0;
}

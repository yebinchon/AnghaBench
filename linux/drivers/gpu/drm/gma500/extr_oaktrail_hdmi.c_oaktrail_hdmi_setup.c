
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct oaktrail_hdmi_dev {struct pci_dev* dev; int regs; int mmio_len; int mmio; } ;
struct drm_psb_private {struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int GFP_KERNEL ;
 int PCI_VENDOR_ID_INTEL ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int ioremap (int ,int ) ;
 int kfree (struct oaktrail_hdmi_dev*) ;
 struct oaktrail_hdmi_dev* kzalloc (int,int ) ;
 int oaktrail_hdmi_audio_disable (struct drm_device*) ;
 int oaktrail_hdmi_i2c_init (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct oaktrail_hdmi_dev*) ;

void oaktrail_hdmi_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct pci_dev *pdev;
 struct oaktrail_hdmi_dev *hdmi_dev;
 int ret;

 pdev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x080d, ((void*)0));
 if (!pdev)
  return;

 hdmi_dev = kzalloc(sizeof(struct oaktrail_hdmi_dev), GFP_KERNEL);
 if (!hdmi_dev) {
  dev_err(dev->dev, "failed to allocate memory\n");
  goto out;
 }


 ret = pci_enable_device(pdev);
 if (ret) {
  dev_err(dev->dev, "failed to enable hdmi controller\n");
  goto free;
 }

 hdmi_dev->mmio = pci_resource_start(pdev, 0);
 hdmi_dev->mmio_len = pci_resource_len(pdev, 0);
 hdmi_dev->regs = ioremap(hdmi_dev->mmio, hdmi_dev->mmio_len);
 if (!hdmi_dev->regs) {
  dev_err(dev->dev, "failed to map hdmi mmio\n");
  goto free;
 }

 hdmi_dev->dev = pdev;
 pci_set_drvdata(pdev, hdmi_dev);


 ret = oaktrail_hdmi_i2c_init(hdmi_dev->dev);
 if (ret)
  dev_err(dev->dev, "HDMI I2C initialization failed\n");

 dev_priv->hdmi_priv = hdmi_dev;
 oaktrail_hdmi_audio_disable(dev);

 dev_info(dev->dev, "HDMI hardware present.\n");

 return;

free:
 kfree(hdmi_dev);
out:
 return;
}

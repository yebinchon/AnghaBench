
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct oaktrail_hdmi_dev {int regs; struct pci_dev* dev; } ;
struct drm_psb_private {struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int iounmap (int ) ;
 int kfree (struct oaktrail_hdmi_dev*) ;
 int oaktrail_hdmi_i2c_exit (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

void oaktrail_hdmi_teardown(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;
 struct pci_dev *pdev;

 if (hdmi_dev) {
  pdev = hdmi_dev->dev;
  pci_set_drvdata(pdev, ((void*)0));
  oaktrail_hdmi_i2c_exit(pdev);
  iounmap(hdmi_dev->regs);
  kfree(hdmi_dev);
  pci_dev_put(pdev);
 }
}

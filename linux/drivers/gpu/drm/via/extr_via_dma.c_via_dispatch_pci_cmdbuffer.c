
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {scalar_t__ pci_buf; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_5__ {int size; int buf; } ;
typedef TYPE_2__ drm_via_cmdbuffer_t ;


 int EFAULT ;
 int ENOMEM ;
 int VIA_PCI_BUF_SIZE ;
 scalar_t__ copy_from_user (scalar_t__,int ,int ) ;
 int via_parse_command_stream (struct drm_device*,int const*,int ) ;
 int via_verify_command_stream (int *,int ,struct drm_device*,int ) ;

__attribute__((used)) static int via_dispatch_pci_cmdbuffer(struct drm_device *dev,
          drm_via_cmdbuffer_t *cmd)
{
 drm_via_private_t *dev_priv = dev->dev_private;
 int ret;

 if (cmd->size > VIA_PCI_BUF_SIZE)
  return -ENOMEM;
 if (copy_from_user(dev_priv->pci_buf, cmd->buf, cmd->size))
  return -EFAULT;

 if ((ret =
      via_verify_command_stream((uint32_t *) dev_priv->pci_buf,
           cmd->size, dev, 0))) {
  return ret;
 }

 ret =
     via_parse_command_stream(dev, (const uint32_t *)dev_priv->pci_buf,
         cmd->size);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_hub {struct fsi_device* upstream; } ;
struct fsi_device {int dummy; } ;
typedef int reg ;
typedef int __be32 ;


 int FSI_LINK_ENABLE_SETUP_TIME ;
 int FSI_MAEB ;
 int FSI_MCENP0 ;
 int FSI_MDLYR ;
 int FSI_MECTRL ;
 int FSI_MECTRL_EOAE ;
 int FSI_MECTRL_P8_AUTO_TERM ;
 int FSI_MLEVP0 ;
 int FSI_MMODE ;
 int FSI_MMODE_ECRC ;
 int FSI_MMODE_EIP ;
 int FSI_MMODE_EPC ;
 int FSI_MMODE_P8_TO_LSB ;
 int FSI_MRESB0 ;
 int FSI_MRESB_RST_ERR ;
 int FSI_MRESB_RST_GEN ;
 int FSI_MRESP0 ;
 int FSI_MRESP_RST_ALL_LINK ;
 int FSI_MRESP_RST_ALL_MASTER ;
 int FSI_MRESP_RST_MCR ;
 int FSI_MRESP_RST_PYE ;
 int FSI_MSENP0 ;
 int cpu_to_be32 (int) ;
 int fsi_device_read (struct fsi_device*,int ,int *,int) ;
 int fsi_device_write (struct fsi_device*,int ,int *,int) ;
 int fsi_mmode_crs0 (int) ;
 int fsi_mmode_crs1 (int) ;
 int mdelay (int ) ;

__attribute__((used)) static int hub_master_init(struct fsi_master_hub *hub)
{
 struct fsi_device *dev = hub->upstream;
 __be32 reg;
 int rc;

 reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK
   | FSI_MRESP_RST_MCR | FSI_MRESP_RST_PYE);
 rc = fsi_device_write(dev, FSI_MRESP0, &reg, sizeof(reg));
 if (rc)
  return rc;


 reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK
   | FSI_MRESP_RST_MCR | FSI_MRESP_RST_PYE);
 rc = fsi_device_write(dev, FSI_MRESP0, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(FSI_MECTRL_EOAE | FSI_MECTRL_P8_AUTO_TERM);
 rc = fsi_device_write(dev, FSI_MECTRL, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(FSI_MMODE_EIP | FSI_MMODE_ECRC | FSI_MMODE_EPC
   | fsi_mmode_crs0(1) | fsi_mmode_crs1(1)
   | FSI_MMODE_P8_TO_LSB);
 rc = fsi_device_write(dev, FSI_MMODE, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(0xffff0000);
 rc = fsi_device_write(dev, FSI_MDLYR, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(~0);
 rc = fsi_device_write(dev, FSI_MSENP0, &reg, sizeof(reg));
 if (rc)
  return rc;


 mdelay(FSI_LINK_ENABLE_SETUP_TIME);

 rc = fsi_device_write(dev, FSI_MCENP0, &reg, sizeof(reg));
 if (rc)
  return rc;

 rc = fsi_device_read(dev, FSI_MAEB, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK);
 rc = fsi_device_write(dev, FSI_MRESP0, &reg, sizeof(reg));
 if (rc)
  return rc;

 rc = fsi_device_read(dev, FSI_MLEVP0, &reg, sizeof(reg));
 if (rc)
  return rc;


 reg = cpu_to_be32(FSI_MRESB_RST_GEN);
 rc = fsi_device_write(dev, FSI_MRESB0, &reg, sizeof(reg));
 if (rc)
  return rc;

 reg = cpu_to_be32(FSI_MRESB_RST_ERR);
 return fsi_device_write(dev, FSI_MRESB0, &reg, sizeof(reg));
}

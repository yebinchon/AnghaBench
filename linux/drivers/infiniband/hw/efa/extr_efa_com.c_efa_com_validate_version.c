
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efa_com_dev {int efa_dev; } ;


 int EFA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK ;
 int EFA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT ;
 int EFA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK ;
 int EFA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT ;
 int EFA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK ;
 int EFA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT ;
 int EFA_REGS_CONTROLLER_VERSION_OFF ;
 int EFA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK ;
 int EFA_REGS_VERSION_MAJOR_VERSION_MASK ;
 int EFA_REGS_VERSION_MAJOR_VERSION_SHIFT ;
 int EFA_REGS_VERSION_MINOR_VERSION_MASK ;
 int EFA_REGS_VERSION_OFF ;
 int EOPNOTSUPP ;
 int MIN_EFA_CTRL_VER ;
 int MIN_EFA_VER ;
 int efa_com_reg_read32 (struct efa_com_dev*,int ) ;
 int ibdev_dbg (int ,char*,int,int,...) ;
 int ibdev_err (int ,char*) ;

int efa_com_validate_version(struct efa_com_dev *edev)
{
 u32 ctrl_ver_masked;
 u32 ctrl_ver;
 u32 ver;





 ver = efa_com_reg_read32(edev, EFA_REGS_VERSION_OFF);
 ctrl_ver = efa_com_reg_read32(edev,
          EFA_REGS_CONTROLLER_VERSION_OFF);

 ibdev_dbg(edev->efa_dev, "efa device version: %d.%d\n",
    (ver & EFA_REGS_VERSION_MAJOR_VERSION_MASK) >>
     EFA_REGS_VERSION_MAJOR_VERSION_SHIFT,
    ver & EFA_REGS_VERSION_MINOR_VERSION_MASK);

 if (ver < MIN_EFA_VER) {
  ibdev_err(edev->efa_dev,
     "EFA version is lower than the minimal version the driver supports\n");
  return -EOPNOTSUPP;
 }

 ibdev_dbg(edev->efa_dev,
    "efa controller version: %d.%d.%d implementation version %d\n",
    (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK) >>
     EFA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT,
    (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK) >>
     EFA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT,
    (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK),
    (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK) >>
     EFA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT);

 ctrl_ver_masked =
  (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK) |
  (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK) |
  (ctrl_ver & EFA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK);


 if (ctrl_ver_masked < MIN_EFA_CTRL_VER) {
  ibdev_err(edev->efa_dev,
     "EFA ctrl version is lower than the minimal ctrl version the driver supports\n");
  return -EOPNOTSUPP;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_csi {int id; TYPE_1__* ipu; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int CSI_SENS_CONF ;
 int CSI_SENS_CONF_SENS_PRTCL_MASK ;
 int CSI_SENS_CONF_SENS_PRTCL_SHIFT ;
 int dev_err (int ,char*,int ) ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool ipu_csi_is_interlaced(struct ipu_csi *csi)
{
 unsigned long flags;
 u32 sensor_protocol;

 spin_lock_irqsave(&csi->lock, flags);
 sensor_protocol =
  (ipu_csi_read(csi, CSI_SENS_CONF) &
   CSI_SENS_CONF_SENS_PRTCL_MASK) >>
  CSI_SENS_CONF_SENS_PRTCL_SHIFT;
 spin_unlock_irqrestore(&csi->lock, flags);

 switch (sensor_protocol) {
 case 129:
 case 128:
 case 130:
 case 133:
 case 132:
  return 0;
 case 131:
 case 135:
 case 134:
  return 1;
 default:
  dev_err(csi->ipu->dev,
   "CSI %d sensor protocol unsupported\n", csi->id);
  return 0;
 }
}

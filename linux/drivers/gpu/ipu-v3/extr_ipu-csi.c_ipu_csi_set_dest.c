
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_csi {int lock; } ;
typedef enum ipu_csi_dest { ____Placeholder_ipu_csi_dest } ipu_csi_dest ;


 int CSI_DATA_DEST_IC ;
 int CSI_DATA_DEST_IDMAC ;
 int CSI_SENS_CONF ;
 int CSI_SENS_CONF_DATA_DEST_MASK ;
 int CSI_SENS_CONF_DATA_DEST_SHIFT ;
 int IPU_CSI_DEST_IDMAC ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int ipu_csi_write (struct ipu_csi*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_csi_set_dest(struct ipu_csi *csi, enum ipu_csi_dest csi_dest)
{
 unsigned long flags;
 u32 csi_sens_conf, dest;

 if (csi_dest == IPU_CSI_DEST_IDMAC)
  dest = CSI_DATA_DEST_IDMAC;
 else
  dest = CSI_DATA_DEST_IC;

 spin_lock_irqsave(&csi->lock, flags);

 csi_sens_conf = ipu_csi_read(csi, CSI_SENS_CONF);
 csi_sens_conf &= ~CSI_SENS_CONF_DATA_DEST_MASK;
 csi_sens_conf |= (dest << CSI_SENS_CONF_DATA_DEST_SHIFT);
 ipu_csi_write(csi, csi_sens_conf, CSI_SENS_CONF);

 spin_unlock_irqrestore(&csi->lock, flags);

 return 0;
}

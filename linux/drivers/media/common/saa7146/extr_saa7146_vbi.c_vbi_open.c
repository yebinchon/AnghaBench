
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int function; } ;
struct saa7146_vv {struct file* vbi_read_timeout_file; TYPE_3__ vbi_read_timeout; } ;
struct saa7146_fh {int vbi_q; TYPE_1__* dev; } ;
struct saa7146_dev {TYPE_4__* ext_vv_data; int v4l2_lock; int slock; TYPE_2__* pci; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct saa7146_vv* vv_data; } ;


 int BRS_CTRL ;
 int DEB_S (char*) ;
 int DEB_VBI (char*,...) ;
 int EBUSY ;
 int MASK_04 ;
 int MASK_08 ;
 int MASK_20 ;
 int MASK_24 ;
 int MASK_29 ;
 int MASK_30 ;
 int MC2 ;
 int PCI_BT_V1 ;
 int RESOURCE_DMA3_BRS ;
 int SAA7146_USE_PORT_B_FOR_VBI ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_FIELD_SEQ_TB ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_res_get (struct saa7146_fh*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int vbi_qops ;
 int vbi_read_timeout ;
 int vbi_workaround (struct saa7146_dev*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int ,int ,int,struct file*,int *) ;

__attribute__((used)) static int vbi_open(struct saa7146_dev *dev, struct file *file)
{
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_vv *vv = fh->dev->vv_data;

 u32 arbtr_ctrl = saa7146_read(dev, PCI_BT_V1);
 int ret = 0;

 DEB_VBI("dev:%p, fh:%p\n", dev, fh);

 ret = saa7146_res_get(fh, RESOURCE_DMA3_BRS);
 if (0 == ret) {
  DEB_S("cannot get vbi RESOURCE_DMA3_BRS resource\n");
  return -EBUSY;
 }


 arbtr_ctrl &= ~0x1f0000;
 arbtr_ctrl |= 0x1d0000;
 saa7146_write(dev, PCI_BT_V1, arbtr_ctrl);
 saa7146_write(dev, MC2, (MASK_04|MASK_20));

 videobuf_queue_sg_init(&fh->vbi_q, &vbi_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VBI_CAPTURE,
       V4L2_FIELD_SEQ_TB,
       sizeof(struct saa7146_buf),
       file, &dev->v4l2_lock);

 vv->vbi_read_timeout.function = vbi_read_timeout;
 vv->vbi_read_timeout_file = file;


 if ( 0 != (SAA7146_USE_PORT_B_FOR_VBI & dev->ext_vv_data->flags)) {
  saa7146_write(dev, BRS_CTRL, MASK_30|MASK_29 | (7 << 19));
 } else {
  saa7146_write(dev, BRS_CTRL, 0x00000001);

  if (0 != (ret = vbi_workaround(dev))) {
   DEB_VBI("vbi workaround failed!\n");

  }
 }


 saa7146_write(dev, MC2, (MASK_08|MASK_24));
 return 0;
}

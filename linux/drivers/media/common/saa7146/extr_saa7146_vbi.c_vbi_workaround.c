
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_vv {int vbi_wq; } ;
struct TYPE_4__ {int dma_handle; } ;
struct saa7146_dev {int pci; TYPE_2__ d_rps1; TYPE_1__* ext_vv_data; struct saa7146_vv* vv_data; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int flags; } ;


 int BASE_EVEN3 ;
 int BASE_ODD3 ;
 int BASE_PAGE3 ;
 int BRS_CTRL ;
 int CMD_E_FID_B ;
 int CMD_INTERRUPT ;
 int CMD_OAN ;
 int CMD_O_FID_B ;
 int CMD_PAUSE ;
 int CMD_SIG1 ;
 int CMD_STOP ;
 int CMD_UPLOAD ;
 int CMD_WR_REG ;
 int DEB_D (char*) ;
 int DEB_VBI (char*,...) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int ENOMEM ;
 int MASK_04 ;
 int MASK_08 ;
 int MASK_10 ;
 int MASK_13 ;
 int MASK_15 ;
 int MASK_19 ;
 int MASK_20 ;
 int MASK_28 ;
 int MASK_29 ;
 int MASK_31 ;
 int MC1 ;
 int MC2 ;
 int NUM_LINE_BYTE3 ;
 int PITCH3 ;
 int PROT_ADDR3 ;
 int RPS_ADDR1 ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int ) ;
 int SAA7146_IER_ENABLE (struct saa7146_dev*,int ) ;
 int SAA7146_USE_PORT_B_FOR_VBI ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WRITE_RPS1 (int) ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int * pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,int *,int) ;
 int remove_wait_queue (int *,int *) ;
 int saa7146_read (struct saa7146_dev*,int) ;
 int saa7146_write (struct saa7146_dev*,int,int) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int vbi_pixel_to_capture ;
 int wait ;

__attribute__((used)) static int vbi_workaround(struct saa7146_dev *dev)
{
 struct saa7146_vv *vv = dev->vv_data;

 u32 *cpu;
 dma_addr_t dma_addr;

 int count = 0;
 int i;

 DECLARE_WAITQUEUE(wait, current);

 DEB_VBI("dev:%p\n", dev);






 cpu = pci_alloc_consistent(dev->pci, 4096, &dma_addr);
 if (((void*)0) == cpu)
  return -ENOMEM;


 saa7146_write(dev, BASE_EVEN3, dma_addr);
 saa7146_write(dev, BASE_ODD3, dma_addr+vbi_pixel_to_capture);
 saa7146_write(dev, PROT_ADDR3, dma_addr+4096);
 saa7146_write(dev, PITCH3, vbi_pixel_to_capture);
 saa7146_write(dev, BASE_PAGE3, 0x0);
 saa7146_write(dev, NUM_LINE_BYTE3, (2<<16)|((vbi_pixel_to_capture)<<0));
 saa7146_write(dev, MC2, MASK_04|MASK_20);


 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));

 WRITE_RPS1(0xc000008c);

 if ( 0 != (SAA7146_USE_PORT_B_FOR_VBI & dev->ext_vv_data->flags)) {
  DEB_D("...using port b\n");
  WRITE_RPS1(CMD_PAUSE | CMD_OAN | CMD_SIG1 | CMD_E_FID_B);
  WRITE_RPS1(CMD_PAUSE | CMD_OAN | CMD_SIG1 | CMD_O_FID_B);



 } else {
  DEB_D("...using port a\n");
  WRITE_RPS1(CMD_PAUSE | MASK_10);
 }

 WRITE_RPS1(CMD_UPLOAD | MASK_08);

 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));

 WRITE_RPS1(((1728-(vbi_pixel_to_capture)) << 7) | MASK_19);

 WRITE_RPS1(CMD_PAUSE | MASK_08);

 WRITE_RPS1(CMD_UPLOAD | MASK_08);

 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (NUM_LINE_BYTE3/4));

 WRITE_RPS1((2 << 16) | (vbi_pixel_to_capture));

 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (BRS_CTRL/4));

 WRITE_RPS1((540 << 7) | (5 << 19));

 WRITE_RPS1(CMD_PAUSE | MASK_08);

 WRITE_RPS1(CMD_UPLOAD | MASK_08 | MASK_04);

 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (MC1/4));
 WRITE_RPS1(MASK_20 | MASK_04);

 WRITE_RPS1(CMD_INTERRUPT);

 WRITE_RPS1(CMD_STOP);



 for(i = 0; i < 2; i++) {


  saa7146_write(dev, MC2, MASK_31|MASK_15);

  saa7146_write(dev, NUM_LINE_BYTE3, (1<<16)|(2<<0));
  saa7146_write(dev, MC2, MASK_04|MASK_20);


  SAA7146_IER_ENABLE(dev,MASK_28);


  add_wait_queue(&vv->vbi_wq, &wait);
  set_current_state(TASK_INTERRUPTIBLE);


  saa7146_write(dev, RPS_ADDR1, dev->d_rps1.dma_handle);
  saa7146_write(dev, MC1, (MASK_13 | MASK_29));

  schedule();

  DEB_VBI("brs bug workaround %d/1\n", i);

  remove_wait_queue(&vv->vbi_wq, &wait);
  __set_current_state(TASK_RUNNING);


  SAA7146_IER_DISABLE(dev,MASK_28);


  saa7146_write(dev, MC1, MASK_20);

  if(signal_pending(current)) {

   DEB_VBI("aborted (rps:0x%08x)\n",
    saa7146_read(dev, RPS_ADDR1));


   saa7146_write(dev, MC1, MASK_29);

   pci_free_consistent(dev->pci, 4096, cpu, dma_addr);
   return -EINTR;
  }
 }

 pci_free_consistent(dev->pci, 4096, cpu, dma_addr);
 return 0;
}

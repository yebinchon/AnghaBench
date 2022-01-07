
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
struct iser_mem_reg {TYPE_2__ sge; int rkey; } ;
struct iser_data_buf {int dummy; } ;
struct iser_ctrl {int read_va; int read_stag; int flags; } ;
struct iscsi_task {int itt; struct iscsi_iser_task* dd_data; } ;
struct TYPE_3__ {struct iser_ctrl iser_header; } ;
struct iscsi_iser_task {struct iser_mem_reg* rdma_reg; struct iser_data_buf* prot; int sc; struct iser_data_buf* data; TYPE_1__ desc; } ;


 int DMA_FROM_DEVICE ;
 size_t ISER_DIR_IN ;
 int ISER_RSV ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int iser_dbg (char*,int ,int ,unsigned long long) ;
 int iser_dma_map_task_data (struct iscsi_iser_task*,struct iser_data_buf*,size_t,int ) ;
 int iser_err (char*) ;
 int iser_reg_rdma_mem (struct iscsi_iser_task*,size_t,int) ;
 scalar_t__ scsi_prot_sg_count (int ) ;

__attribute__((used)) static int iser_prepare_read_cmd(struct iscsi_task *task)

{
 struct iscsi_iser_task *iser_task = task->dd_data;
 struct iser_mem_reg *mem_reg;
 int err;
 struct iser_ctrl *hdr = &iser_task->desc.iser_header;
 struct iser_data_buf *buf_in = &iser_task->data[ISER_DIR_IN];

 err = iser_dma_map_task_data(iser_task,
         buf_in,
         ISER_DIR_IN,
         DMA_FROM_DEVICE);
 if (err)
  return err;

 if (scsi_prot_sg_count(iser_task->sc)) {
  struct iser_data_buf *pbuf_in = &iser_task->prot[ISER_DIR_IN];

  err = iser_dma_map_task_data(iser_task,
          pbuf_in,
          ISER_DIR_IN,
          DMA_FROM_DEVICE);
  if (err)
   return err;
 }

 err = iser_reg_rdma_mem(iser_task, ISER_DIR_IN, 0);
 if (err) {
  iser_err("Failed to set up Data-IN RDMA\n");
  return err;
 }
 mem_reg = &iser_task->rdma_reg[ISER_DIR_IN];

 hdr->flags |= ISER_RSV;
 hdr->read_stag = cpu_to_be32(mem_reg->rkey);
 hdr->read_va = cpu_to_be64(mem_reg->sge.addr);

 iser_dbg("Cmd itt:%d READ tags RKEY:%#.4X VA:%#llX\n",
   task->itt, mem_reg->rkey,
   (unsigned long long)mem_reg->sge.addr);

 return 0;
}

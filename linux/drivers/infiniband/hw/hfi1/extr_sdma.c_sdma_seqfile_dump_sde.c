
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u16 ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int current_state; } ;
struct sdma_engine {size_t descq_head; size_t sdma_mask; struct hw_sdma_desc* descq; int descq_full_count; int flushlist; int descq_tail; int tx_head; int tx_tail; scalar_t__ ahg_bits; scalar_t__ last_status; int * head_dma; TYPE_1__ state; int cpu; int this_idx; } ;
struct hw_sdma_desc {int * qw; } ;


 int CTRL ;
 int ENG_ERR_STATUS ;
 int HEAD ;
 int LEN_GEN ;
 int MEMORY ;
 size_t READ_ONCE (int ) ;
 int RELOAD_CNT ;
 int SD (int ) ;
 int SDE_FMT ;
 int SDMA_DESC0_BYTE_COUNT_MASK ;
 int SDMA_DESC0_BYTE_COUNT_SHIFT ;
 int SDMA_DESC0_FIRST_DESC_FLAG ;
 int SDMA_DESC0_LAST_DESC_FLAG ;
 int SDMA_DESC0_PHY_ADDR_MASK ;
 int SDMA_DESC0_PHY_ADDR_SHIFT ;
 int SDMA_DESC1_GENERATION_MASK ;
 int SDMA_DESC1_GENERATION_SHIFT ;
 int SDMA_DESC1_HEADER_INDEX_SHIFT ;
 int SDMA_DESC1_HEADER_INDEX_SMASK ;
 int SDMA_DESC1_HEADER_MODE_SHIFT ;
 int SDMA_DESC1_HEADER_MODE_SMASK ;
 int SDMA_DESC1_HEAD_TO_HOST_FLAG ;
 int SDMA_DESC1_INT_REQ_FLAG ;
 int SEND_DMA_CHECK_SLID ;
 int STATUS ;
 int TAIL ;
 int le64_to_cpu (int ) ;
 int list_empty (int *) ;
 scalar_t__ read_sde_csr (struct sdma_engine*,int ) ;
 int sdma_state_name (int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;

void sdma_seqfile_dump_sde(struct seq_file *s, struct sdma_engine *sde)
{
 u16 head, tail;
 struct hw_sdma_desc *descqp;
 u64 desc[2];
 u64 addr;
 u8 gen;
 u16 len;

 head = sde->descq_head & sde->sdma_mask;
 tail = READ_ONCE(sde->descq_tail) & sde->sdma_mask;
 seq_printf(s, SDE_FMT, sde->this_idx,
     sde->cpu,
     sdma_state_name(sde->state.current_state),
     (unsigned long long)read_sde_csr(sde, SD(CTRL)),
     (unsigned long long)read_sde_csr(sde, SD(STATUS)),
     (unsigned long long)read_sde_csr(sde, SD(ENG_ERR_STATUS)),
     (unsigned long long)read_sde_csr(sde, SD(TAIL)), tail,
     (unsigned long long)read_sde_csr(sde, SD(HEAD)), head,
     (unsigned long long)le64_to_cpu(*sde->head_dma),
     (unsigned long long)read_sde_csr(sde, SD(MEMORY)),
     (unsigned long long)read_sde_csr(sde, SD(LEN_GEN)),
     (unsigned long long)read_sde_csr(sde, SD(RELOAD_CNT)),
     (unsigned long long)sde->last_status,
     (unsigned long long)sde->ahg_bits,
     sde->tx_tail,
     sde->tx_head,
     sde->descq_tail,
     sde->descq_head,
     !list_empty(&sde->flushlist),
     sde->descq_full_count,
     (unsigned long long)read_sde_csr(sde, SEND_DMA_CHECK_SLID));


 while (head != tail) {
  char flags[6] = { 'x', 'x', 'x', 'x', 0 };

  descqp = &sde->descq[head];
  desc[0] = le64_to_cpu(descqp->qw[0]);
  desc[1] = le64_to_cpu(descqp->qw[1]);
  flags[0] = (desc[1] & SDMA_DESC1_INT_REQ_FLAG) ? 'I' : '-';
  flags[1] = (desc[1] & SDMA_DESC1_HEAD_TO_HOST_FLAG) ?
    'H' : '-';
  flags[2] = (desc[0] & SDMA_DESC0_FIRST_DESC_FLAG) ? 'F' : '-';
  flags[3] = (desc[0] & SDMA_DESC0_LAST_DESC_FLAG) ? 'L' : '-';
  addr = (desc[0] >> SDMA_DESC0_PHY_ADDR_SHIFT)
   & SDMA_DESC0_PHY_ADDR_MASK;
  gen = (desc[1] >> SDMA_DESC1_GENERATION_SHIFT)
   & SDMA_DESC1_GENERATION_MASK;
  len = (desc[0] >> SDMA_DESC0_BYTE_COUNT_SHIFT)
   & SDMA_DESC0_BYTE_COUNT_MASK;
  seq_printf(s,
      "\tdesc[%u]: flags:%s addr:0x%016llx gen:%u len:%u bytes\n",
      head, flags, addr, gen, len);
  if (desc[0] & SDMA_DESC0_FIRST_DESC_FLAG)
   seq_printf(s, "\t\tahgidx: %u ahgmode: %u\n",
       (u8)((desc[1] &
      SDMA_DESC1_HEADER_INDEX_SMASK) >>
     SDMA_DESC1_HEADER_INDEX_SHIFT),
       (u8)((desc[1] &
      SDMA_DESC1_HEADER_MODE_SMASK) >>
     SDMA_DESC1_HEADER_MODE_SHIFT));
  head = (head + 1) & sde->sdma_mask;
 }
}

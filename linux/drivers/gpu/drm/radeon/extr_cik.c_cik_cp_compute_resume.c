
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int gpu_addr; } ;
struct TYPE_5__ {int num_pipe; int num_mec; int hpd_eop_gpu_addr; } ;
struct radeon_device {int usec_timeout; TYPE_4__* ring; int srbm_mutex; TYPE_2__ wb; int dev; TYPE_1__ mec; } ;
struct TYPE_7__ {int cp_hqd_pq_doorbell_control; int cp_hqd_dequeue_request; int cp_hqd_pq_rptr; int cp_hqd_pq_wptr; int cp_mqd_base_addr; int cp_mqd_base_addr_hi; int cp_mqd_control; int cp_hqd_pq_base; int cp_hqd_pq_base_hi; int cp_hqd_pq_control; int cp_hqd_pq_wptr_poll_addr; int cp_hqd_pq_wptr_poll_addr_hi; int cp_hqd_pq_rptr_report_addr; int cp_hqd_pq_rptr_report_addr_hi; int cp_hqd_vmid; int cp_hqd_active; } ;
struct bonaire_mqd {int header; int* static_thread_mgmt01; int* static_thread_mgmt23; TYPE_3__ queue_state; } ;
struct TYPE_8__ {int me; int pipe; int gpu_addr; int ring_size; int wptr; int ready; int * mqd_obj; int doorbell_index; int queue; } ;


 int BUF_SWAP_32BIT ;
 int CAYMAN_RING_TYPE_CP1_INDEX ;
 int CAYMAN_RING_TYPE_CP2_INDEX ;
 int CIK_WB_CP1_WPTR_OFFSET ;
 int CIK_WB_CP2_WPTR_OFFSET ;
 int CP_CPF_DEBUG ;
 int CP_HPD_EOP_BASE_ADDR ;
 int CP_HPD_EOP_BASE_ADDR_HI ;
 int CP_HPD_EOP_CONTROL ;
 int CP_HPD_EOP_VMID ;
 int CP_HQD_ACTIVE ;
 int CP_HQD_DEQUEUE_REQUEST ;
 int CP_HQD_PQ_BASE ;
 int CP_HQD_PQ_BASE_HI ;
 int CP_HQD_PQ_CONTROL ;
 int CP_HQD_PQ_DOORBELL_CONTROL ;
 int CP_HQD_PQ_RPTR ;
 int CP_HQD_PQ_RPTR_REPORT_ADDR ;
 int CP_HQD_PQ_RPTR_REPORT_ADDR_HI ;
 int CP_HQD_PQ_WPTR ;
 int CP_HQD_PQ_WPTR_POLL_ADDR ;
 int CP_HQD_PQ_WPTR_POLL_ADDR_HI ;
 int CP_HQD_VMID ;
 int CP_MQD_BASE_ADDR ;
 int CP_MQD_BASE_ADDR_HI ;
 int CP_MQD_CONTROL ;
 int CP_PQ_WPTR_POLL_CNTL ;
 int DOORBELL_EN ;
 int DOORBELL_HIT ;
 int DOORBELL_OFFSET (int ) ;
 int DOORBELL_OFFSET_MASK ;
 int DOORBELL_SOURCE ;
 int EOP_SIZE_MASK ;
 int KMD_QUEUE ;
 int MEC_HPD_SIZE ;
 int MQD_VMID_MASK ;
 int PAGE_SIZE ;
 int PQ_VOLATILE ;
 int PRIV_STATE ;
 int QUEUE_SIZE_MASK ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GPU_PAGE_SIZE ;
 int RADEON_WB_CP1_RPTR_OFFSET ;
 int RADEON_WB_CP2_RPTR_OFFSET ;
 int ROQ_PQ_IB_FLIP ;
 int RPTR_BLOCK_SIZE_MASK ;
 int RREG32 (int ) ;
 int UNORD_DISPATCH ;
 int WPTR_POLL_EN ;
 int WREG32 (int ,int) ;
 int cik_cp_compute_fini (struct radeon_device*) ;
 int cik_cp_compute_start (struct radeon_device*) ;
 int cik_srbm_select (struct radeon_device*,int,int,int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;
 int radeon_bo_create (struct radeon_device*,int,int ,int,int ,int ,int *,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_pin (int *,int ,int*) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 int radeon_ring_test (struct radeon_device*,int,TYPE_4__*) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int cik_cp_compute_resume(struct radeon_device *rdev)
{
 int r, i, j, idx;
 u32 tmp;
 bool use_doorbell = 1;
 u64 hqd_gpu_addr;
 u64 mqd_gpu_addr;
 u64 eop_gpu_addr;
 u64 wb_gpu_addr;
 u32 *buf;
 struct bonaire_mqd *mqd;

 r = cik_cp_compute_start(rdev);
 if (r)
  return r;


 tmp = RREG32(CP_CPF_DEBUG);
 tmp |= (1 << 23);
 WREG32(CP_CPF_DEBUG, tmp);


 mutex_lock(&rdev->srbm_mutex);

 for (i = 0; i < (rdev->mec.num_pipe * rdev->mec.num_mec); ++i) {
  int me = (i < 4) ? 1 : 2;
  int pipe = (i < 4) ? i : (i - 4);

  cik_srbm_select(rdev, me, pipe, 0, 0);

  eop_gpu_addr = rdev->mec.hpd_eop_gpu_addr + (i * MEC_HPD_SIZE * 2) ;

  WREG32(CP_HPD_EOP_BASE_ADDR, eop_gpu_addr >> 8);
  WREG32(CP_HPD_EOP_BASE_ADDR_HI, upper_32_bits(eop_gpu_addr) >> 8);


  WREG32(CP_HPD_EOP_VMID, 0);


  tmp = RREG32(CP_HPD_EOP_CONTROL);
  tmp &= ~EOP_SIZE_MASK;
  tmp |= order_base_2(MEC_HPD_SIZE / 8);
  WREG32(CP_HPD_EOP_CONTROL, tmp);

 }
 cik_srbm_select(rdev, 0, 0, 0, 0);
 mutex_unlock(&rdev->srbm_mutex);


 for (i = 0; i < 2; i++) {
  if (i == 0)
   idx = CAYMAN_RING_TYPE_CP1_INDEX;
  else
   idx = CAYMAN_RING_TYPE_CP2_INDEX;

  if (rdev->ring[idx].mqd_obj == ((void*)0)) {
   r = radeon_bo_create(rdev,
          sizeof(struct bonaire_mqd),
          PAGE_SIZE, 1,
          RADEON_GEM_DOMAIN_GTT, 0, ((void*)0),
          ((void*)0), &rdev->ring[idx].mqd_obj);
   if (r) {
    dev_warn(rdev->dev, "(%d) create MQD bo failed\n", r);
    return r;
   }
  }

  r = radeon_bo_reserve(rdev->ring[idx].mqd_obj, 0);
  if (unlikely(r != 0)) {
   cik_cp_compute_fini(rdev);
   return r;
  }
  r = radeon_bo_pin(rdev->ring[idx].mqd_obj, RADEON_GEM_DOMAIN_GTT,
      &mqd_gpu_addr);
  if (r) {
   dev_warn(rdev->dev, "(%d) pin MQD bo failed\n", r);
   cik_cp_compute_fini(rdev);
   return r;
  }
  r = radeon_bo_kmap(rdev->ring[idx].mqd_obj, (void **)&buf);
  if (r) {
   dev_warn(rdev->dev, "(%d) map MQD bo failed\n", r);
   cik_cp_compute_fini(rdev);
   return r;
  }


  memset(buf, 0, sizeof(struct bonaire_mqd));

  mqd = (struct bonaire_mqd *)buf;
  mqd->header = 0xC0310800;
  mqd->static_thread_mgmt01[0] = 0xffffffff;
  mqd->static_thread_mgmt01[1] = 0xffffffff;
  mqd->static_thread_mgmt23[0] = 0xffffffff;
  mqd->static_thread_mgmt23[1] = 0xffffffff;

  mutex_lock(&rdev->srbm_mutex);
  cik_srbm_select(rdev, rdev->ring[idx].me,
    rdev->ring[idx].pipe,
    rdev->ring[idx].queue, 0);


  tmp = RREG32(CP_PQ_WPTR_POLL_CNTL);
  tmp &= ~WPTR_POLL_EN;
  WREG32(CP_PQ_WPTR_POLL_CNTL, tmp);


  mqd->queue_state.cp_hqd_pq_doorbell_control =
   RREG32(CP_HQD_PQ_DOORBELL_CONTROL);
  if (use_doorbell)
   mqd->queue_state.cp_hqd_pq_doorbell_control |= DOORBELL_EN;
  else
   mqd->queue_state.cp_hqd_pq_doorbell_control &= ~DOORBELL_EN;
  WREG32(CP_HQD_PQ_DOORBELL_CONTROL,
         mqd->queue_state.cp_hqd_pq_doorbell_control);


  mqd->queue_state.cp_hqd_dequeue_request = 0;
  mqd->queue_state.cp_hqd_pq_rptr = 0;
  mqd->queue_state.cp_hqd_pq_wptr= 0;
  if (RREG32(CP_HQD_ACTIVE) & 1) {
   WREG32(CP_HQD_DEQUEUE_REQUEST, 1);
   for (j = 0; j < rdev->usec_timeout; j++) {
    if (!(RREG32(CP_HQD_ACTIVE) & 1))
     break;
    udelay(1);
   }
   WREG32(CP_HQD_DEQUEUE_REQUEST, mqd->queue_state.cp_hqd_dequeue_request);
   WREG32(CP_HQD_PQ_RPTR, mqd->queue_state.cp_hqd_pq_rptr);
   WREG32(CP_HQD_PQ_WPTR, mqd->queue_state.cp_hqd_pq_wptr);
  }


  mqd->queue_state.cp_mqd_base_addr = mqd_gpu_addr & 0xfffffffc;
  mqd->queue_state.cp_mqd_base_addr_hi = upper_32_bits(mqd_gpu_addr);
  WREG32(CP_MQD_BASE_ADDR, mqd->queue_state.cp_mqd_base_addr);
  WREG32(CP_MQD_BASE_ADDR_HI, mqd->queue_state.cp_mqd_base_addr_hi);

  mqd->queue_state.cp_mqd_control = RREG32(CP_MQD_CONTROL);
  mqd->queue_state.cp_mqd_control &= ~MQD_VMID_MASK;
  WREG32(CP_MQD_CONTROL, mqd->queue_state.cp_mqd_control);


  hqd_gpu_addr = rdev->ring[idx].gpu_addr >> 8;
  mqd->queue_state.cp_hqd_pq_base = hqd_gpu_addr;
  mqd->queue_state.cp_hqd_pq_base_hi = upper_32_bits(hqd_gpu_addr);
  WREG32(CP_HQD_PQ_BASE, mqd->queue_state.cp_hqd_pq_base);
  WREG32(CP_HQD_PQ_BASE_HI, mqd->queue_state.cp_hqd_pq_base_hi);


  mqd->queue_state.cp_hqd_pq_control = RREG32(CP_HQD_PQ_CONTROL);
  mqd->queue_state.cp_hqd_pq_control &=
   ~(QUEUE_SIZE_MASK | RPTR_BLOCK_SIZE_MASK);

  mqd->queue_state.cp_hqd_pq_control |=
   order_base_2(rdev->ring[idx].ring_size / 8);
  mqd->queue_state.cp_hqd_pq_control |=
   (order_base_2(RADEON_GPU_PAGE_SIZE/8) << 8);



  mqd->queue_state.cp_hqd_pq_control &=
   ~(UNORD_DISPATCH | ROQ_PQ_IB_FLIP | PQ_VOLATILE);
  mqd->queue_state.cp_hqd_pq_control |=
   PRIV_STATE | KMD_QUEUE;
  WREG32(CP_HQD_PQ_CONTROL, mqd->queue_state.cp_hqd_pq_control);


  if (i == 0)
   wb_gpu_addr = rdev->wb.gpu_addr + CIK_WB_CP1_WPTR_OFFSET;
  else
   wb_gpu_addr = rdev->wb.gpu_addr + CIK_WB_CP2_WPTR_OFFSET;
  mqd->queue_state.cp_hqd_pq_wptr_poll_addr = wb_gpu_addr & 0xfffffffc;
  mqd->queue_state.cp_hqd_pq_wptr_poll_addr_hi = upper_32_bits(wb_gpu_addr) & 0xffff;
  WREG32(CP_HQD_PQ_WPTR_POLL_ADDR, mqd->queue_state.cp_hqd_pq_wptr_poll_addr);
  WREG32(CP_HQD_PQ_WPTR_POLL_ADDR_HI,
         mqd->queue_state.cp_hqd_pq_wptr_poll_addr_hi);


  if (i == 0)
   wb_gpu_addr = rdev->wb.gpu_addr + RADEON_WB_CP1_RPTR_OFFSET;
  else
   wb_gpu_addr = rdev->wb.gpu_addr + RADEON_WB_CP2_RPTR_OFFSET;
  mqd->queue_state.cp_hqd_pq_rptr_report_addr = wb_gpu_addr & 0xfffffffc;
  mqd->queue_state.cp_hqd_pq_rptr_report_addr_hi =
   upper_32_bits(wb_gpu_addr) & 0xffff;
  WREG32(CP_HQD_PQ_RPTR_REPORT_ADDR,
         mqd->queue_state.cp_hqd_pq_rptr_report_addr);
  WREG32(CP_HQD_PQ_RPTR_REPORT_ADDR_HI,
         mqd->queue_state.cp_hqd_pq_rptr_report_addr_hi);


  if (use_doorbell) {
   mqd->queue_state.cp_hqd_pq_doorbell_control =
    RREG32(CP_HQD_PQ_DOORBELL_CONTROL);
   mqd->queue_state.cp_hqd_pq_doorbell_control &= ~DOORBELL_OFFSET_MASK;
   mqd->queue_state.cp_hqd_pq_doorbell_control |=
    DOORBELL_OFFSET(rdev->ring[idx].doorbell_index);
   mqd->queue_state.cp_hqd_pq_doorbell_control |= DOORBELL_EN;
   mqd->queue_state.cp_hqd_pq_doorbell_control &=
    ~(DOORBELL_SOURCE | DOORBELL_HIT);

  } else {
   mqd->queue_state.cp_hqd_pq_doorbell_control = 0;
  }
  WREG32(CP_HQD_PQ_DOORBELL_CONTROL,
         mqd->queue_state.cp_hqd_pq_doorbell_control);


  rdev->ring[idx].wptr = 0;
  mqd->queue_state.cp_hqd_pq_wptr = rdev->ring[idx].wptr;
  WREG32(CP_HQD_PQ_WPTR, mqd->queue_state.cp_hqd_pq_wptr);
  mqd->queue_state.cp_hqd_pq_rptr = RREG32(CP_HQD_PQ_RPTR);


  mqd->queue_state.cp_hqd_vmid = 0;
  WREG32(CP_HQD_VMID, mqd->queue_state.cp_hqd_vmid);


  mqd->queue_state.cp_hqd_active = 1;
  WREG32(CP_HQD_ACTIVE, mqd->queue_state.cp_hqd_active);

  cik_srbm_select(rdev, 0, 0, 0, 0);
  mutex_unlock(&rdev->srbm_mutex);

  radeon_bo_kunmap(rdev->ring[idx].mqd_obj);
  radeon_bo_unreserve(rdev->ring[idx].mqd_obj);

  rdev->ring[idx].ready = 1;
  r = radeon_ring_test(rdev, idx, &rdev->ring[idx]);
  if (r)
   rdev->ring[idx].ready = 0;
 }

 return 0;
}

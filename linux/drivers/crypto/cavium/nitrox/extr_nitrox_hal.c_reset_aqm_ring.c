
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aqmq_en {void* value; scalar_t__ queue_enable; } ;
union aqmq_cmp_cnt {void* value; } ;
union aqmq_activity_stat {int queue_active; void* value; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int AQMQ_ACTIVITY_STATX (int) ;
 int AQMQ_CMP_CNTX (int) ;
 int AQMQ_ENX (int) ;
 int MAX_CSR_RETRIES ;
 void* nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,void*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void reset_aqm_ring(struct nitrox_device *ndev, int ring)
{
 union aqmq_en aqmq_en_reg;
 union aqmq_activity_stat activity_stat;
 union aqmq_cmp_cnt cmp_cnt;
 int max_retries = MAX_CSR_RETRIES;
 u64 offset;


 offset = AQMQ_ENX(ring);
 aqmq_en_reg.value = 0;
 aqmq_en_reg.queue_enable = 0;
 nitrox_write_csr(ndev, offset, aqmq_en_reg.value);


 usleep_range(100, 150);
 offset = AQMQ_ACTIVITY_STATX(ring);
 do {
  activity_stat.value = nitrox_read_csr(ndev, offset);
  if (!activity_stat.queue_active)
   break;
  udelay(50);
 } while (max_retries--);


 offset = AQMQ_CMP_CNTX(ring);
 cmp_cnt.value = nitrox_read_csr(ndev, offset);
 nitrox_write_csr(ndev, offset, cmp_cnt.value);
 usleep_range(50, 100);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aqmq_en {int queue_enable; scalar_t__ value; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int AQMQ_ENX (int) ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;
 int usleep_range (int,int) ;

void enable_aqm_ring(struct nitrox_device *ndev, int ring)
{
 union aqmq_en aqmq_en_reg;
 u64 offset;

 offset = AQMQ_ENX(ring);
 aqmq_en_reg.value = 0;
 aqmq_en_reg.queue_enable = 1;
 nitrox_write_csr(ndev, offset, aqmq_en_reg.value);
 usleep_range(50, 100);
}

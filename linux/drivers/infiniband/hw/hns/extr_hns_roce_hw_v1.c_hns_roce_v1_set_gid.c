
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
typedef int u32 ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct hns_roce_dev {TYPE_1__ iboe; scalar_t__ reg_base; } ;


 int HNS_ROCE_V1_GID_NUM ;
 scalar_t__ ROCEE_PORT_GID_H_0_REG ;
 scalar_t__ ROCEE_PORT_GID_L_0_REG ;
 scalar_t__ ROCEE_PORT_GID_MH_0_REG ;
 scalar_t__ ROCEE_PORT_GID_ML_0_REG ;
 int hns_get_gid_index (struct hns_roce_dev*,int,int) ;
 int roce_raw_write (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hns_roce_v1_set_gid(struct hns_roce_dev *hr_dev, u8 port,
          int gid_index, const union ib_gid *gid,
          const struct ib_gid_attr *attr)
{
 unsigned long flags;
 u32 *p = ((void*)0);
 u8 gid_idx = 0;

 gid_idx = hns_get_gid_index(hr_dev, port, gid_index);

 spin_lock_irqsave(&hr_dev->iboe.lock, flags);

 p = (u32 *)&gid->raw[0];
 roce_raw_write(*p, hr_dev->reg_base + ROCEE_PORT_GID_L_0_REG +
         (HNS_ROCE_V1_GID_NUM * gid_idx));

 p = (u32 *)&gid->raw[4];
 roce_raw_write(*p, hr_dev->reg_base + ROCEE_PORT_GID_ML_0_REG +
         (HNS_ROCE_V1_GID_NUM * gid_idx));

 p = (u32 *)&gid->raw[8];
 roce_raw_write(*p, hr_dev->reg_base + ROCEE_PORT_GID_MH_0_REG +
         (HNS_ROCE_V1_GID_NUM * gid_idx));

 p = (u32 *)&gid->raw[0xc];
 roce_raw_write(*p, hr_dev->reg_base + ROCEE_PORT_GID_H_0_REG +
         (HNS_ROCE_V1_GID_NUM * gid_idx));

 spin_unlock_irqrestore(&hr_dev->iboe.lock, flags);

 return 0;
}

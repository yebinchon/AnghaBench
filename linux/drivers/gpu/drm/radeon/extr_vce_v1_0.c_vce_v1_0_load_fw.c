
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vce_v1_0_fw_signature {TYPE_3__* val; int len; int num; } ;
struct TYPE_5__ {int keyselect; } ;
struct radeon_device {int family; TYPE_2__ vce; TYPE_1__* vce_fw; } ;
struct TYPE_6__ {int* nonce; int* sigval; int keyselect; int chip_id; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ data; } ;







 int EINVAL ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int*,struct vce_v1_0_fw_signature*,scalar_t__) ;
 int memset (int*,int ,int) ;

int vce_v1_0_load_fw(struct radeon_device *rdev, uint32_t *data)
{
 struct vce_v1_0_fw_signature *sign = (void*)rdev->vce_fw->data;
 uint32_t chip_id;
 int i;

 switch (rdev->family) {
 case 129:
  chip_id = 0x01000014;
  break;
 case 128:
  chip_id = 0x01000015;
  break;
 case 130:
 case 131:
  chip_id = 0x01000016;
  break;
 case 132:
  chip_id = 0x01000017;
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < le32_to_cpu(sign->num); ++i) {
  if (le32_to_cpu(sign->val[i].chip_id) == chip_id)
   break;
 }

 if (i == le32_to_cpu(sign->num))
  return -EINVAL;

 data += (256 - 64) / 4;
 data[0] = sign->val[i].nonce[0];
 data[1] = sign->val[i].nonce[1];
 data[2] = sign->val[i].nonce[2];
 data[3] = sign->val[i].nonce[3];
 data[4] = cpu_to_le32(le32_to_cpu(sign->len) + 64);

 memset(&data[5], 0, 44);
 memcpy(&data[16], &sign[1], rdev->vce_fw->size - sizeof(*sign));

 data += (le32_to_cpu(sign->len) + 64) / 4;
 data[0] = sign->val[i].sigval[0];
 data[1] = sign->val[i].sigval[1];
 data[2] = sign->val[i].sigval[2];
 data[3] = sign->val[i].sigval[3];

 rdev->vce.keyselect = le32_to_cpu(sign->val[i].keyselect);

 return 0;
}

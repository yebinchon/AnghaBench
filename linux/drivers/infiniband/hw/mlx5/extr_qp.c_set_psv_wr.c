
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_seg_set_psv {void* ref_tag; void* transient_sig; void* psv_num; } ;
struct TYPE_3__ {int bg; int app_tag; int ref_tag; } ;
struct TYPE_4__ {TYPE_1__ dif; } ;
struct ib_sig_domain {int sig_type; TYPE_2__ sig; } ;


 int EINVAL ;


 void* cpu_to_be32 (int) ;
 int memset (struct mlx5_seg_set_psv*,int ,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int set_psv_wr(struct ib_sig_domain *domain,
        u32 psv_idx, void **seg, int *size)
{
 struct mlx5_seg_set_psv *psv_seg = *seg;

 memset(psv_seg, 0, sizeof(*psv_seg));
 psv_seg->psv_num = cpu_to_be32(psv_idx);
 switch (domain->sig_type) {
 case 129:
  break;
 case 128:
  psv_seg->transient_sig = cpu_to_be32(domain->sig.dif.bg << 16 |
           domain->sig.dif.app_tag);
  psv_seg->ref_tag = cpu_to_be32(domain->sig.dif.ref_tag);
  break;
 default:
  pr_err("Bad signature type (%d) is given.\n",
         domain->sig_type);
  return -EINVAL;
 }

 *seg += sizeof(*psv_seg);
 *size += sizeof(*psv_seg) / 16;

 return 0;
}

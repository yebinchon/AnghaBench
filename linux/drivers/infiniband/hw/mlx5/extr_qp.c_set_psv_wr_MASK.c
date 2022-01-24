#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlx5_seg_set_psv {void* ref_tag; void* transient_sig; void* psv_num; } ;
struct TYPE_3__ {int bg; int app_tag; int ref_tag; } ;
struct TYPE_4__ {TYPE_1__ dif; } ;
struct ib_sig_domain {int sig_type; TYPE_2__ sig; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IB_SIG_TYPE_NONE 129 
#define  IB_SIG_TYPE_T10_DIF 128 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_seg_set_psv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct ib_sig_domain *domain,
		      u32 psv_idx, void **seg, int *size)
{
	struct mlx5_seg_set_psv *psv_seg = *seg;

	FUNC1(psv_seg, 0, sizeof(*psv_seg));
	psv_seg->psv_num = FUNC0(psv_idx);
	switch (domain->sig_type) {
	case IB_SIG_TYPE_NONE:
		break;
	case IB_SIG_TYPE_T10_DIF:
		psv_seg->transient_sig = FUNC0(domain->sig.dif.bg << 16 |
						     domain->sig.dif.app_tag);
		psv_seg->ref_tag = FUNC0(domain->sig.dif.ref_tag);
		break;
	default:
		FUNC2("Bad signature type (%d) is given.\n",
		       domain->sig_type);
		return -EINVAL;
	}

	*seg += sizeof(*psv_seg);
	*size += sizeof(*psv_seg) / 16;

	return 0;
}
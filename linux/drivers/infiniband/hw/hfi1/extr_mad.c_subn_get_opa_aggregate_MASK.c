#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct opa_smp {int status; int /*<<< orphan*/  attr_mod; } ;
struct opa_aggregate {int /*<<< orphan*/  data; int /*<<< orphan*/  attr_id; int /*<<< orphan*/  attr_mod; int /*<<< orphan*/  err_reqlength; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_SMP_DIRECTION ; 
 int IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (struct opa_smp*) ; 
 int FUNC4 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_aggregate*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct opa_smp*,int,int /*<<< orphan*/ ,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct opa_smp *smp,
				  struct ib_device *ibdev, u8 port,
				  u32 *resp_len)
{
	int i;
	u32 num_attr = FUNC1(smp->attr_mod) & 0x000000ff;
	u8 *next_smp = FUNC3(smp);

	if (num_attr < 1 || num_attr > 117) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC4((struct ib_mad_hdr *)smp);
	}

	for (i = 0; i < num_attr; i++) {
		struct opa_aggregate *agg;
		size_t agg_data_len;
		size_t agg_size;
		u32 am;

		agg = (struct opa_aggregate *)next_smp;
		agg_data_len = (FUNC0(agg->err_reqlength) & 0x007f) * 8;
		agg_size = sizeof(*agg) + agg_data_len;
		am = FUNC1(agg->attr_mod);

		*resp_len += agg_size;

		if (next_smp + agg_size > ((u8 *)smp) + sizeof(*smp)) {
			smp->status |= IB_SMP_INVALID_FIELD;
			return FUNC4((struct ib_mad_hdr *)smp);
		}

		/* zero the payload for this segment */
		FUNC2(next_smp + sizeof(*agg), 0, agg_data_len);

		(void)FUNC6(agg->attr_id, smp, am, agg->data,
				       ibdev, port, NULL, (u32)agg_data_len);

		if (smp->status & IB_SMP_INVALID_FIELD)
			break;
		if (smp->status & ~IB_SMP_DIRECTION) {
			FUNC5(agg);
			return FUNC4((struct ib_mad_hdr *)smp);
		}
		next_smp += agg_size;
	}

	return FUNC4((struct ib_mad_hdr *)smp);
}
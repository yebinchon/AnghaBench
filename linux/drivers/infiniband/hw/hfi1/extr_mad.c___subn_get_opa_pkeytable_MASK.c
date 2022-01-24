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
typedef  int u16 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int OPA_NUM_PKEY_BLOCKS_PER_SMP ; 
 unsigned int OPA_PARTITION_TABLE_BLK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC4 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,...) ; 
 int FUNC6 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC7 (size_t,int) ; 

__attribute__((used)) static int FUNC8(struct opa_smp *smp, u32 am, u8 *data,
				    struct ib_device *ibdev, u8 port,
				    u32 *resp_len, u32 max_len)
{
	struct hfi1_devdata *dd = FUNC2(ibdev);
	u32 n_blocks_req = FUNC0(am);
	u32 start_block = am & 0x7ff;
	__be16 *p;
	u16 *q;
	int i;
	u16 n_blocks_avail;
	unsigned npkeys = FUNC4(dd);
	size_t size;

	if (n_blocks_req == 0) {
		FUNC5("OPA Get PKey AM Invalid : P = %d; B = 0x%x; N = 0x%x\n",
			port, start_block, n_blocks_req);
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC6((struct ib_mad_hdr *)smp);
	}

	n_blocks_avail = (u16)(npkeys / OPA_PARTITION_TABLE_BLK_SIZE) + 1;

	size = (n_blocks_req * OPA_PARTITION_TABLE_BLK_SIZE) * sizeof(u16);

	if (FUNC7(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC6((struct ib_mad_hdr *)smp);
	}

	if (start_block + n_blocks_req > n_blocks_avail ||
	    n_blocks_req > OPA_NUM_PKEY_BLOCKS_PER_SMP) {
		FUNC5("OPA Get PKey AM Invalid : s 0x%x; req 0x%x; "
			"avail 0x%x; blk/smp 0x%lx\n",
			start_block, n_blocks_req, n_blocks_avail,
			OPA_NUM_PKEY_BLOCKS_PER_SMP);
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC6((struct ib_mad_hdr *)smp);
	}

	p = (__be16 *)data;
	q = (u16 *)data;
	/* get the real pkeys if we are requesting the first block */
	if (start_block == 0) {
		FUNC3(dd, port, q);
		for (i = 0; i < npkeys; i++)
			p[i] = FUNC1(q[i]);
		if (resp_len)
			*resp_len += size;
	} else {
		smp->status |= IB_SMP_INVALID_FIELD;
	}
	return FUNC6((struct ib_mad_hdr *)smp);
}
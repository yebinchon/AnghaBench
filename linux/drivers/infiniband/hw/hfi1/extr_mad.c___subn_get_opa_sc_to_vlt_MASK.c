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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 struct hfi1_devdata* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,void*) ; 
 int FUNC3 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC4 (size_t,int) ; 

__attribute__((used)) static int FUNC5(struct opa_smp *smp, u32 am, u8 *data,
				    struct ib_device *ibdev, u8 port,
				    u32 *resp_len, u32 max_len)
{
	u32 n_blocks = FUNC0(am);
	struct hfi1_devdata *dd = FUNC1(ibdev);
	void *vp = (void *)data;
	size_t size = 4 * sizeof(u64);

	if (n_blocks != 1 || FUNC4(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC3((struct ib_mad_hdr *)smp);
	}

	FUNC2(dd, vp);

	if (resp_len)
		*resp_len += size;

	return FUNC3((struct ib_mad_hdr *)smp);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct opa_mad {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int base_version; } ;
struct ib_mad {int dummy; } ;
struct ib_grh {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ib_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int IB_MAD_RESULT_FAILURE ; 
#define  IB_MGMT_BASE_VERSION 129 
#define  OPA_MGMT_BASE_VERSION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct ib_mad const*,struct ib_mad*) ; 
 int FUNC2 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct opa_mad*,struct opa_mad*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct ib_device *ibdev, int mad_flags, u8 port,
		     const struct ib_wc *in_wc, const struct ib_grh *in_grh,
		     const struct ib_mad_hdr *in_mad, size_t in_mad_size,
		     struct ib_mad_hdr *out_mad, size_t *out_mad_size,
		     u16 *out_mad_pkey_index)
{
	switch (in_mad->base_version) {
	case OPA_MGMT_BASE_VERSION:
		if (FUNC3(in_mad_size != sizeof(struct opa_mad))) {
			FUNC0(ibdev->dev.parent, "invalid in_mad_size\n");
			return IB_MAD_RESULT_FAILURE;
		}
		return FUNC2(ibdev, mad_flags, port,
					    in_wc, in_grh,
					    (struct opa_mad *)in_mad,
					    (struct opa_mad *)out_mad,
					    out_mad_size,
					    out_mad_pkey_index);
	case IB_MGMT_BASE_VERSION:
		return FUNC1(ibdev, mad_flags, port,
					  in_wc, in_grh,
					  (const struct ib_mad *)in_mad,
					  (struct ib_mad *)out_mad);
	default:
		break;
	}

	return IB_MAD_RESULT_FAILURE;
}
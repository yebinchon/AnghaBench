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
typedef  int /*<<< orphan*/  u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int port_cap_flags; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
typedef  int __be16 ;

/* Variables and functions */
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_SUCCESS ; 
 int IB_PORT_SM ; 
 int IB_PORT_SM_DISABLED ; 
#define  IB_SMP_ATTR_LED_INFO 140 
#define  IB_SMP_ATTR_PKEY_TABLE 139 
#define  IB_SMP_ATTR_PORT_INFO 138 
#define  IB_SMP_ATTR_SM_INFO 137 
#define  IB_SMP_ATTR_VL_ARB_TABLE 136 
 int /*<<< orphan*/  IB_SMP_UNSUP_METH_ATTR ; 
#define  OPA_ATTRIB_ID_BUFFER_CONTROL_TABLE 135 
#define  OPA_ATTRIB_ID_CONGESTION_CONTROL_TABLE 134 
#define  OPA_ATTRIB_ID_HFI_CONGESTION_SETTING 133 
#define  OPA_ATTRIB_ID_PORT_STATE_INFO 132 
#define  OPA_ATTRIB_ID_SC_TO_SL_MAP 131 
#define  OPA_ATTRIB_ID_SC_TO_VLNT_MAP 130 
#define  OPA_ATTRIB_ID_SC_TO_VLT_MAP 129 
#define  OPA_ATTRIB_ID_SL_TO_SC_MAP 128 
 int FUNC0 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ib_mad_hdr*) ; 
 struct hfi1_ibport* FUNC13 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(__be16 attr_id, struct opa_smp *smp, u32 am,
			    u8 *data, struct ib_device *ibdev, u8 port,
			    u32 *resp_len, u32 max_len, int local_mad)
{
	int ret;
	struct hfi1_ibport *ibp = FUNC13(ibdev, port);

	switch (attr_id) {
	case IB_SMP_ATTR_PORT_INFO:
		ret = FUNC5(smp, am, data, ibdev, port,
					      resp_len, max_len, local_mad);
		break;
	case IB_SMP_ATTR_PKEY_TABLE:
		ret = FUNC4(smp, am, data, ibdev, port,
					       resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_SL_TO_SC_MAP:
		ret = FUNC10(smp, am, data, ibdev, port,
					      resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_SC_TO_SL_MAP:
		ret = FUNC7(smp, am, data, ibdev, port,
					      resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_SC_TO_VLT_MAP:
		ret = FUNC9(smp, am, data, ibdev, port,
					       resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_SC_TO_VLNT_MAP:
		ret = FUNC8(smp, am, data, ibdev, port,
						resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_PORT_STATE_INFO:
		ret = FUNC6(smp, am, data, ibdev, port,
					 resp_len, max_len, local_mad);
		break;
	case OPA_ATTRIB_ID_BUFFER_CONTROL_TABLE:
		ret = FUNC0(smp, am, data, ibdev, port,
					 resp_len, max_len);
		break;
	case IB_SMP_ATTR_VL_ARB_TABLE:
		ret = FUNC11(smp, am, data, ibdev, port,
					    resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_HFI_CONGESTION_SETTING:
		ret = FUNC2(smp, am, data, ibdev,
						  port, resp_len, max_len);
		break;
	case OPA_ATTRIB_ID_CONGESTION_CONTROL_TABLE:
		ret = FUNC1(smp, am, data, ibdev, port,
					      resp_len, max_len);
		break;
	case IB_SMP_ATTR_LED_INFO:
		ret = FUNC3(smp, am, data, ibdev, port,
					      resp_len, max_len);
		break;
	case IB_SMP_ATTR_SM_INFO:
		if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED)
			return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
		if (ibp->rvp.port_cap_flags & IB_PORT_SM)
			return IB_MAD_RESULT_SUCCESS;
		/* FALLTHROUGH */
	default:
		smp->status |= IB_SMP_UNSUP_METH_ATTR;
		ret = FUNC12((struct ib_mad_hdr *)smp);
		break;
	}
	return ret;
}
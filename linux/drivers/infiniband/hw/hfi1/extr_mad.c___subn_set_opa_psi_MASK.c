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
typedef  int u8 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct opa_port_state_info {int /*<<< orphan*/  port_states; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int is_sm_config_started; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int IB_PORT_ARMED ; 
 int IB_PORT_INIT ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct opa_smp*,int,int*,struct ib_device*,int,int*,int) ; 
 int FUNC3 (struct hfi1_pportdata*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct hfi1_pportdata* FUNC6 (struct hfi1_ibport*) ; 
 int FUNC7 (struct ib_mad_hdr*) ; 
 int FUNC8 (struct hfi1_pportdata*,struct opa_smp*,int,int,int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 struct hfi1_ibport* FUNC10 (struct ib_device*,int) ; 

__attribute__((used)) static int FUNC11(struct opa_smp *smp, u32 am, u8 *data,
			      struct ib_device *ibdev, u8 port,
			      u32 *resp_len, u32 max_len, int local_mad)
{
	u32 nports = FUNC0(am);
	u32 start_of_sm_config = FUNC1(am);
	u32 ls_old;
	u8 ls_new, ps_new;
	struct hfi1_ibport *ibp;
	struct hfi1_pportdata *ppd;
	struct opa_port_state_info *psi = (struct opa_port_state_info *)data;
	int ret, invalid = 0;

	if (nports != 1 || FUNC9(sizeof(*psi), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC7((struct ib_mad_hdr *)smp);
	}

	ibp = FUNC10(ibdev, port);
	ppd = FUNC6(ibp);

	ls_old = FUNC3(ppd);

	ls_new = FUNC4(&psi->port_states);
	ps_new = FUNC5(&psi->port_states);

	if (ls_old == IB_PORT_INIT) {
		if (start_of_sm_config) {
			if (ls_new == ls_old || (ls_new == IB_PORT_ARMED))
				ppd->is_sm_config_started = 1;
		} else if (ls_new == IB_PORT_ARMED) {
			if (ppd->is_sm_config_started == 0) {
				invalid = 1;
				smp->status |= IB_SMP_INVALID_FIELD;
			}
		}
	}

	if (!invalid) {
		ret = FUNC8(ppd, smp, ls_new, ps_new, local_mad);
		if (ret)
			return ret;
	}

	return FUNC2(smp, am, data, ibdev, port, resp_len,
				  max_len);
}
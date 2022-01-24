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
struct adf_pf2vf_resp {int /*<<< orphan*/  pf2vf_resp_work; struct adf_accel_vf_info* vf_info; } ;
struct adf_accel_vf_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adf_iov_send_resp ; 
 struct adf_pf2vf_resp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf2vf_resp_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct adf_accel_vf_info *vf_info = (struct adf_accel_vf_info *)data;
	struct adf_pf2vf_resp *pf2vf_resp;

	pf2vf_resp = FUNC1(sizeof(*pf2vf_resp), GFP_ATOMIC);
	if (!pf2vf_resp)
		return;

	pf2vf_resp->vf_info = vf_info;
	FUNC0(&pf2vf_resp->pf2vf_resp_work, adf_iov_send_resp);
	FUNC2(pf2vf_resp_wq, &pf2vf_resp->pf2vf_resp_work);
}
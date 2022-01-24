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
typedef  int /*<<< orphan*/  u16 ;
struct creq_query_version_resp {char fw_maj; char fw_minor; char fw_bld; char fw_rsvd; } ;
struct cmdq_query_version {int dummy; } ;
struct bnxt_qplib_rcfw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct cmdq_query_version,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnxt_qplib_rcfw*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bnxt_qplib_rcfw *rcfw,
				     char *fw_ver)
{
	struct cmdq_query_version req;
	struct creq_query_version_resp resp;
	u16 cmd_flags = 0;
	int rc = 0;

	FUNC0(req, QUERY_VERSION, cmd_flags);

	rc = FUNC1(rcfw, (void *)&req,
					  (void *)&resp, NULL, 0);
	if (rc)
		return;
	fw_ver[0] = resp.fw_maj;
	fw_ver[1] = resp.fw_minor;
	fw_ver[2] = resp.fw_bld;
	fw_ver[3] = resp.fw_rsvd;
}
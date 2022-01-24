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
typedef  int /*<<< orphan*/  u32 ;
struct intel_guc_ct_channel {int dummy; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int /*<<< orphan*/  send_mutex; struct intel_guc_ct ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_guc_ct*,struct intel_guc_ct_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct intel_guc *guc, const u32 *action, u32 len,
		      u32 *response_buf, u32 response_buf_size)
{
	struct intel_guc_ct *ct = &guc->ct;
	struct intel_guc_ct_channel *ctch = &ct->host_channel;
	u32 status = ~0; /* undefined */
	int ret;

	FUNC3(&guc->send_mutex);

	ret = FUNC2(ct, ctch, action, len, response_buf, response_buf_size,
			&status);
	if (FUNC5(ret < 0)) {
		FUNC1("CT: send action %#X failed; err=%d status=%#X\n",
			  action[0], ret, status);
	} else if (FUNC5(ret)) {
		FUNC0("CT: send action %#x returned %d (%#x)\n",
				action[0], ret, ret);
	}

	FUNC4(&guc->send_mutex);
	return ret;
}
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
typedef  int u32 ;
struct hdcp_srm_header {int /*<<< orphan*/  reserved; int /*<<< orphan*/  srm_gen_no; int /*<<< orphan*/  srm_version; int /*<<< orphan*/  srm_id; } ;
struct TYPE_2__ {int revoked_ksv_cnt; int /*<<< orphan*/  revoked_ksv_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_HDCP_1_4_DCP_SIG_SIZE ; 
 int DRM_HDCP_1_4_VRL_LENGTH_SIZE ; 
 int /*<<< orphan*/  DRM_HDCP_KSV_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* srm_data ; 

__attribute__((used)) static int FUNC9(const u8 *buf, size_t count)
{
	struct hdcp_srm_header *header;
	u32 vrl_length, ksv_count;

	if (count < (sizeof(struct hdcp_srm_header) +
	    DRM_HDCP_1_4_VRL_LENGTH_SIZE + DRM_HDCP_1_4_DCP_SIG_SIZE)) {
		FUNC1("Invalid blob length\n");
		return -EINVAL;
	}

	header = (struct hdcp_srm_header *)buf;
	FUNC0("SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\n",
		  header->srm_id,
		  FUNC3(header->srm_version), header->srm_gen_no);

	FUNC2(header->reserved);

	buf = buf + sizeof(*header);
	vrl_length = FUNC6(buf);
	if (count < (sizeof(struct hdcp_srm_header) + vrl_length) ||
	    vrl_length < (DRM_HDCP_1_4_VRL_LENGTH_SIZE +
			  DRM_HDCP_1_4_DCP_SIG_SIZE)) {
		FUNC1("Invalid blob length or vrl length\n");
		return -EINVAL;
	}

	/* Length of the all vrls combined */
	vrl_length -= (DRM_HDCP_1_4_VRL_LENGTH_SIZE +
		       DRM_HDCP_1_4_DCP_SIG_SIZE);

	if (!vrl_length) {
		FUNC1("No vrl found\n");
		return -EINVAL;
	}

	buf += DRM_HDCP_1_4_VRL_LENGTH_SIZE;
	ksv_count = FUNC4(buf, vrl_length);
	if (!ksv_count) {
		FUNC0("Revoked KSV count is 0\n");
		return count;
	}

	FUNC8(srm_data->revoked_ksv_list);
	srm_data->revoked_ksv_list = FUNC7(ksv_count, DRM_HDCP_KSV_LEN,
					     GFP_KERNEL);
	if (!srm_data->revoked_ksv_list) {
		FUNC1("Out of Memory\n");
		return -ENOMEM;
	}

	if (FUNC5(buf, srm_data->revoked_ksv_list,
				      vrl_length) != ksv_count) {
		srm_data->revoked_ksv_cnt = 0;
		FUNC8(srm_data->revoked_ksv_list);
		return -EINVAL;
	}

	srm_data->revoked_ksv_cnt = ksv_count;
	return count;
}
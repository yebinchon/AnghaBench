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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_HDCP_KSV_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(const u8 *buf, u8 *revoked_ksv_list,
				     u32 vrls_length)
{
	u32 parsed_bytes = 0, ksv_count = 0;
	u32 vrl_ksv_cnt, vrl_ksv_sz, vrl_idx = 0;

	do {
		vrl_ksv_cnt = *buf;
		vrl_ksv_sz = vrl_ksv_cnt * DRM_HDCP_KSV_LEN;

		buf++;

		FUNC0("vrl: %d, Revoked KSVs: %d\n", vrl_idx++,
			  vrl_ksv_cnt);
		FUNC1(revoked_ksv_list, buf, vrl_ksv_sz);

		ksv_count += vrl_ksv_cnt;
		revoked_ksv_list += vrl_ksv_sz;
		buf += vrl_ksv_sz;

		parsed_bytes += (vrl_ksv_sz + 1);
	} while (parsed_bytes < vrls_length);

	return ksv_count;
}
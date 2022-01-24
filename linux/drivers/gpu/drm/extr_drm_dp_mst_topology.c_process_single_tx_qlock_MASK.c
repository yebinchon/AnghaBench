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
struct drm_dp_sideband_msg_tx {scalar_t__ state; int seqno; int cur_len; int cur_offset; int /*<<< orphan*/ * msg; } ;
struct drm_dp_sideband_msg_hdr {int somt; int eomt; int msg_len; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_QUEUED ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_SENT ; 
 scalar_t__ DRM_DP_SIDEBAND_TX_START_SEND ; 
 int FUNC1 (struct drm_dp_sideband_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_sideband_msg_hdr*,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (struct drm_dp_mst_topology_mgr*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_dp_sideband_msg_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (struct drm_dp_sideband_msg_hdr*,struct drm_dp_sideband_msg_tx*) ; 

__attribute__((used)) static int FUNC9(struct drm_dp_mst_topology_mgr *mgr,
				   struct drm_dp_sideband_msg_tx *txmsg,
				   bool up)
{
	u8 chunk[48];
	struct drm_dp_sideband_msg_hdr hdr;
	int len, space, idx, tosend;
	int ret;

	FUNC6(&hdr, 0, sizeof(struct drm_dp_sideband_msg_hdr));

	if (txmsg->state == DRM_DP_SIDEBAND_TX_QUEUED) {
		txmsg->seqno = -1;
		txmsg->state = DRM_DP_SIDEBAND_TX_START_SEND;
	}

	/* make hdr from dst mst - for replies use seqno
	   otherwise assign one */
	ret = FUNC8(&hdr, txmsg);
	if (ret < 0)
		return ret;

	/* amount left to send in this message */
	len = txmsg->cur_len - txmsg->cur_offset;

	/* 48 - sideband msg size - 1 byte for data CRC, x header bytes */
	space = 48 - 1 - FUNC1(&hdr);

	tosend = FUNC7(len, space);
	if (len == txmsg->cur_len)
		hdr.somt = 1;
	if (space >= len)
		hdr.eomt = 1;


	hdr.msg_len = tosend + 1;
	FUNC3(&hdr, chunk, &idx);
	FUNC5(&chunk[idx], &txmsg->msg[txmsg->cur_offset], tosend);
	/* add crc at end */
	FUNC2(&chunk[idx], tosend);
	idx += tosend + 1;

	ret = FUNC4(mgr, up, chunk, idx);
	if (ret) {
		FUNC0("sideband msg failed to send\n");
		return ret;
	}

	txmsg->cur_offset += tosend;
	if (txmsg->cur_offset == txmsg->cur_len) {
		txmsg->state = DRM_DP_SIDEBAND_TX_SENT;
		return 1;
	}
	return 0;
}
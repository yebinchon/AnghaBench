#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct fw_ri_tpte {void* len_hi; void* dca_mwbcnt_pstag; void* va_lo_fbo; void* va_hi; void* len_lo; void* nosnoop_pbladdr; void* locread_to_qpid; void* valid_to_pdid; } ;
struct c4iw_wr_wait {int dummy; } ;
struct TYPE_11__ {scalar_t__ cur; scalar_t__ max; int /*<<< orphan*/  fail; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; TYPE_5__ stag; } ;
struct TYPE_10__ {int /*<<< orphan*/  tpt_table; } ;
struct TYPE_9__ {TYPE_2__* vr; } ;
struct c4iw_rdev {TYPE_6__ stats; TYPE_4__ resource; TYPE_3__ lldi; } ;
typedef  enum fw_ri_stag_type { ____Placeholder_fw_ri_stag_type } fw_ri_stag_type ;
typedef  enum fw_ri_mem_perms { ____Placeholder_fw_ri_mem_perms } fw_ri_mem_perms ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_7__ {int start; } ;
struct TYPE_8__ {TYPE_1__ stag; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_RI_TPTE_MWBINDEN_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FW_RI_TPTE_STAGKEY_M ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FW_RI_TPTE_VALID_F ; 
 int /*<<< orphan*/  FW_RI_VA_BASED_TO ; 
 int /*<<< orphan*/  FW_RI_ZERO_BASED_TO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC8 (struct c4iw_rdev*,int) ; 
 int T4_STAG_UNSET ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct c4iw_rdev*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 void* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct fw_ri_tpte*) ; 
 struct fw_ri_tpte* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct fw_ri_tpte*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int,int,int) ; 
 int FUNC20 (struct c4iw_rdev*,int,int,struct fw_ri_tpte*,struct sk_buff*,struct c4iw_wr_wait*) ; 

__attribute__((used)) static int FUNC21(struct c4iw_rdev *rdev, u32 reset_tpt_entry,
			   u32 *stag, u8 stag_state, u32 pdid,
			   enum fw_ri_stag_type type, enum fw_ri_mem_perms perm,
			   int bind_enabled, u32 zbva, u64 to,
			   u64 len, u8 page_size, u32 pbl_size, u32 pbl_addr,
			   struct sk_buff *skb, struct c4iw_wr_wait *wr_waitp)
{
	int err;
	struct fw_ri_tpte *tpt;
	u32 stag_idx;
	static atomic_t key;

	if (FUNC10(rdev))
		return -EIO;

	tpt = FUNC15(sizeof(*tpt), GFP_KERNEL);
	if (!tpt)
		return -ENOMEM;

	stag_state = stag_state > 0;
	stag_idx = (*stag) >> 8;

	if ((!reset_tpt_entry) && (*stag == T4_STAG_UNSET)) {
		stag_idx = FUNC11(&rdev->resource.tpt_table);
		if (!stag_idx) {
			FUNC17(&rdev->stats.lock);
			rdev->stats.stag.fail++;
			FUNC18(&rdev->stats.lock);
			FUNC14(tpt);
			return -ENOMEM;
		}
		FUNC17(&rdev->stats.lock);
		rdev->stats.stag.cur += 32;
		if (rdev->stats.stag.cur > rdev->stats.stag.max)
			rdev->stats.stag.max = rdev->stats.stag.cur;
		FUNC18(&rdev->stats.lock);
		*stag = (stag_idx << 8) | (FUNC9(&key) & 0xff);
	}
	FUNC19("stag_state 0x%0x type 0x%0x pdid 0x%0x, stag_idx 0x%x\n",
		 stag_state, type, pdid, stag_idx);

	/* write TPT entry */
	if (reset_tpt_entry)
		FUNC16(tpt, 0, sizeof(*tpt));
	else {
		tpt->valid_to_pdid = FUNC13(FW_RI_TPTE_VALID_F |
			FUNC5((*stag & FW_RI_TPTE_STAGKEY_M)) |
			FUNC6(stag_state) |
			FUNC7(type) | FUNC2(pdid));
		tpt->locread_to_qpid = FUNC13(FUNC3(perm) |
			(bind_enabled ? FW_RI_TPTE_MWBINDEN_F : 0) |
			FUNC0((zbva ? FW_RI_ZERO_BASED_TO :
						      FW_RI_VA_BASED_TO))|
			FUNC4(page_size));
		tpt->nosnoop_pbladdr = !pbl_size ? 0 : FUNC13(
			FUNC1(FUNC8(rdev, pbl_addr)>>3));
		tpt->len_lo = FUNC13((u32)(len & 0xffffffffUL));
		tpt->va_hi = FUNC13((u32)(to >> 32));
		tpt->va_lo_fbo = FUNC13((u32)(to & 0xffffffffUL));
		tpt->dca_mwbcnt_pstag = FUNC13(0);
		tpt->len_hi = FUNC13((u32)(len >> 32));
	}
	err = FUNC20(rdev, stag_idx +
				(rdev->lldi.vr->stag.start >> 5),
				sizeof(*tpt), tpt, skb, wr_waitp);

	if (reset_tpt_entry) {
		FUNC12(&rdev->resource.tpt_table, stag_idx);
		FUNC17(&rdev->stats.lock);
		rdev->stats.stag.cur -= 32;
		FUNC18(&rdev->stats.lock);
	}
	FUNC14(tpt);
	return err;
}
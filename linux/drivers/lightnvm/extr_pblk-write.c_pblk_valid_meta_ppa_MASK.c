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
typedef  scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {scalar_t__ meta_distance; int /*<<< orphan*/  blk_bitmap; } ;
struct pblk_c_ctx {int /*<<< orphan*/  lun_bitmap; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 struct ppa_addr FUNC0 (struct pblk*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct pblk_c_ctx* FUNC1 (struct nvm_rq*) ; 
 struct pblk_line* FUNC2 (struct pblk*) ; 
 scalar_t__ FUNC3 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC4 (struct ppa_addr,struct ppa_addr) ; 
 int FUNC5 (struct nvm_geo*,struct ppa_addr) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC8(struct pblk *pblk,
				       struct pblk_line *meta_line,
				       struct nvm_rq *data_rqd)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_c_ctx *data_c_ctx = FUNC1(data_rqd);
	struct pblk_line *data_line = FUNC2(pblk);
	struct ppa_addr ppa, ppa_opt;
	u64 paddr;
	int pos_opt;

	/* Schedule a metadata I/O that is half the distance from the data I/O
	 * with regards to the number of LUNs forming the pblk instance. This
	 * balances LUN conflicts across every I/O.
	 *
	 * When the LUN configuration changes (e.g., due to GC), this distance
	 * can align, which would result on metadata and data I/Os colliding. In
	 * this case, modify the distance to not be optimal, but move the
	 * optimal in the right direction.
	 */
	paddr = FUNC3(pblk, meta_line);
	ppa = FUNC0(pblk, paddr, 0);
	ppa_opt = FUNC0(pblk, paddr + data_line->meta_distance, 0);
	pos_opt = FUNC5(geo, ppa_opt);

	if (FUNC6(pos_opt, data_c_ctx->lun_bitmap) ||
				FUNC6(pos_opt, data_line->blk_bitmap))
		return true;

	if (FUNC7(FUNC4(ppa_opt, ppa)))
		data_line->meta_distance--;

	return false;
}
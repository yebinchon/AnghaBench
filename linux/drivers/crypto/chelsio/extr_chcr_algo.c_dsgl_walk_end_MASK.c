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
struct dsgl_walk {int /*<<< orphan*/  nents; struct cpl_rx_phys_dsgl* dsgl; } ;
struct TYPE_2__ {int channel; scalar_t__ hash_val; int /*<<< orphan*/  qid; int /*<<< orphan*/  opcode; } ;
struct cpl_rx_phys_dsgl {TYPE_1__ rss_hdr_int; void* pcirlxorder_to_noofsgentr; void* op_to_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_RX_PHYS_ADDR ; 
 int /*<<< orphan*/  CPL_RX_PHYS_DSGL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned short) ; 

__attribute__((used)) static inline void FUNC10(struct dsgl_walk *walk, unsigned short qid,
				 int pci_chan_id)
{
	struct cpl_rx_phys_dsgl *phys_cpl;

	phys_cpl = walk->dsgl;

	phys_cpl->op_to_tid = FUNC8(FUNC3(CPL_RX_PHYS_DSGL)
				    | FUNC1(0));
	phys_cpl->pcirlxorder_to_noofsgentr =
		FUNC8(FUNC5(0) |
		      FUNC4(0) |
		      FUNC6(0) |
		      FUNC7(0) |
		      FUNC0(0) |
		      FUNC2(walk->nents));
	phys_cpl->rss_hdr_int.opcode = CPL_RX_PHYS_ADDR;
	phys_cpl->rss_hdr_int.qid = FUNC9(qid);
	phys_cpl->rss_hdr_int.hash_val = 0;
	phys_cpl->rss_hdr_int.channel = pci_chan_id;
}
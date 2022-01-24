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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mac_iv; int /*<<< orphan*/  mac_digest; int /*<<< orphan*/  mac_src_p; int /*<<< orphan*/  enc_iv; int /*<<< orphan*/  enc_key_p; int /*<<< orphan*/  enc_p; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;
struct mv_cesa_engine {int sram_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CESA_SA_DESC_MAC_DATA_MSK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  CESA_SA_DESC_MAC_DIGEST_MSK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int CESA_SA_SRAM_MSK ; 

__attribute__((used)) static inline void FUNC6(struct mv_cesa_engine *engine,
				     struct mv_cesa_op_ctx *op)
{
	u32 offset = engine->sram_dma & CESA_SA_SRAM_MSK;

	op->desc.enc_p = FUNC0(offset);
	op->desc.enc_key_p = FUNC2(offset);
	op->desc.enc_iv = FUNC1(offset);
	op->desc.mac_src_p &= ~CESA_SA_DESC_MAC_DATA_MSK;
	op->desc.mac_src_p |= FUNC3(offset);
	op->desc.mac_digest &= ~CESA_SA_DESC_MAC_DIGEST_MSK;
	op->desc.mac_digest |= FUNC4(offset);
	op->desc.mac_iv = FUNC5(offset);
}
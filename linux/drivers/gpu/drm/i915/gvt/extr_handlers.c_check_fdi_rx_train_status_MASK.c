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
struct intel_vgpu {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FDI_LINK_TRAIN_PATTERN1 ; 
 unsigned int FDI_LINK_TRAIN_PATTERN2 ; 
 unsigned int FDI_LINK_TRAIN_PATTERN_1 ; 
 unsigned int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 unsigned int FDI_LINK_TRAIN_PATTERN_2 ; 
 unsigned int FDI_LINK_TRAIN_PATTERN_2_CPT ; 
 unsigned int FDI_RX_BIT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FDI_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FDI_RX_SYMBOL_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FDI_TX_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 unsigned int FUNC4 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_vgpu *vgpu,
		enum pipe pipe, unsigned int train_pattern)
{
	i915_reg_t fdi_rx_imr, fdi_tx_ctl, fdi_rx_ctl;
	unsigned int fdi_rx_check_bits, fdi_tx_check_bits;
	unsigned int fdi_rx_train_bits, fdi_tx_train_bits;
	unsigned int fdi_iir_check_bits;

	fdi_rx_imr = FUNC1(pipe);
	fdi_tx_ctl = FUNC2(pipe);
	fdi_rx_ctl = FUNC0(pipe);

	if (train_pattern == FDI_LINK_TRAIN_PATTERN1) {
		fdi_rx_train_bits = FDI_LINK_TRAIN_PATTERN_1_CPT;
		fdi_tx_train_bits = FDI_LINK_TRAIN_PATTERN_1;
		fdi_iir_check_bits = FDI_RX_BIT_LOCK;
	} else if (train_pattern == FDI_LINK_TRAIN_PATTERN2) {
		fdi_rx_train_bits = FDI_LINK_TRAIN_PATTERN_2_CPT;
		fdi_tx_train_bits = FDI_LINK_TRAIN_PATTERN_2;
		fdi_iir_check_bits = FDI_RX_SYMBOL_LOCK;
	} else {
		FUNC3("Invalid train pattern %d\n", train_pattern);
		return -EINVAL;
	}

	fdi_rx_check_bits = FDI_RX_ENABLE | fdi_rx_train_bits;
	fdi_tx_check_bits = FDI_TX_ENABLE | fdi_tx_train_bits;

	/* If imr bit has been masked */
	if (FUNC4(vgpu, fdi_rx_imr) & fdi_iir_check_bits)
		return 0;

	if (((FUNC4(vgpu, fdi_tx_ctl) & fdi_tx_check_bits)
			== fdi_tx_check_bits)
		&& ((FUNC4(vgpu, fdi_rx_ctl) & fdi_rx_check_bits)
			== fdi_rx_check_bits))
		return 1;
	else
		return 0;
}
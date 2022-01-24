#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ppc440spe_adma_device {scalar_t__ id; scalar_t__ irq; scalar_t__ err_irq; TYPE_2__* i2o_reg; TYPE_1__* xor_reg; } ;
struct ppc440spe_adma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  iopim; } ;
struct TYPE_3__ {int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int I2O_IOPIM_P0EM ; 
 int I2O_IOPIM_P0SNE ; 
 int I2O_IOPIM_P1EM ; 
 int I2O_IOPIM_P1SNE ; 
 scalar_t__ PPC440SPE_DMA0_ID ; 
 scalar_t__ PPC440SPE_XOR_ID ; 
 int XOR_IE_CBCIE_BIT ; 
 int XOR_IE_ICBIE_BIT ; 
 int XOR_IE_ICIE_BIT ; 
 int XOR_IE_RPTIE_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct ppc440spe_adma_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  ppc440spe_adma_err_irq_ref ; 

__attribute__((used)) static void FUNC8(struct ppc440spe_adma_device *adev,
					struct ppc440spe_adma_chan *chan)
{
	u32 mask, disable;

	if (adev->id == PPC440SPE_XOR_ID) {
		/* disable XOR engine interrupts */
		mask = FUNC3(&adev->xor_reg->ier);
		mask &= ~(XOR_IE_CBCIE_BIT | XOR_IE_ICBIE_BIT |
			  XOR_IE_ICIE_BIT | XOR_IE_RPTIE_BIT);
		FUNC6(mask, &adev->xor_reg->ier);
	} else {
		/* disable DMAx engine interrupts */
		disable = (adev->id == PPC440SPE_DMA0_ID) ?
			  (I2O_IOPIM_P0SNE | I2O_IOPIM_P0EM) :
			  (I2O_IOPIM_P1SNE | I2O_IOPIM_P1EM);
		mask = FUNC2(&adev->i2o_reg->iopim) | disable;
		FUNC5(mask, &adev->i2o_reg->iopim);
	}
	FUNC1(adev->irq, chan);
	FUNC7(adev->irq);
	if (adev->err_irq > 0) {
		FUNC1(adev->err_irq, chan);
		if (FUNC0(&ppc440spe_adma_err_irq_ref)) {
			FUNC7(adev->err_irq);
			FUNC4(adev->i2o_reg);
		}
	}
}
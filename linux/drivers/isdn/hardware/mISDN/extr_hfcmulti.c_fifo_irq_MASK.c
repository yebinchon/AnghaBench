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
typedef  int u_char ;
struct hfc_multi {TYPE_1__* chan; int /*<<< orphan*/ * created; } ;
struct dchannel {int /*<<< orphan*/  Flags; } ;
struct bchannel {int /*<<< orphan*/  Flags; } ;
struct TYPE_2__ {size_t port; struct bchannel* bch; struct dchannel* dch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACTIVE ; 
 int FUNC0 (struct hfc_multi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hfc_multi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfc_multi*) ; 
 int /*<<< orphan*/  R_FIFO ; 
 scalar_t__ R_IRQ_FIFO_BL0 ; 
 int /*<<< orphan*/  FUNC3 (struct hfc_multi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfc_multi*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct hfc_multi *hc, int block)
{
	int	ch, j;
	struct dchannel	*dch;
	struct bchannel	*bch;
	u_char r_irq_fifo_bl;

	r_irq_fifo_bl = FUNC0(hc, R_IRQ_FIFO_BL0 + block);
	j = 0;
	while (j < 8) {
		ch = (block << 2) + (j >> 1);
		dch = hc->chan[ch].dch;
		bch = hc->chan[ch].bch;
		if (((!dch) && (!bch)) || (!hc->created[hc->chan[ch].port])) {
			j += 2;
			continue;
		}
		if (dch && (r_irq_fifo_bl & (1 << j)) &&
		    FUNC5(FLG_ACTIVE, &dch->Flags)) {
			FUNC4(hc, ch);
			/* start fifo */
			FUNC1(hc, R_FIFO, 0);
			FUNC2(hc);
		}
		if (bch && (r_irq_fifo_bl & (1 << j)) &&
		    FUNC5(FLG_ACTIVE, &bch->Flags)) {
			FUNC4(hc, ch);
			/* start fifo */
			FUNC1(hc, R_FIFO, 0);
			FUNC2(hc);
		}
		j++;
		if (dch && (r_irq_fifo_bl & (1 << j)) &&
		    FUNC5(FLG_ACTIVE, &dch->Flags)) {
			FUNC3(hc, ch);
		}
		if (bch && (r_irq_fifo_bl & (1 << j)) &&
		    FUNC5(FLG_ACTIVE, &bch->Flags)) {
			FUNC3(hc, ch);
		}
		j++;
	}
}
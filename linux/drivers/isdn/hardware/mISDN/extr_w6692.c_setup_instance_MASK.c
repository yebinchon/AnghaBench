#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_12__ {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  send; } ;
struct TYPE_16__ {int Dprotocols; int Bprotocols; int nrbchan; int /*<<< orphan*/  bchannels; int /*<<< orphan*/  channelmap; TYPE_1__ D; } ;
struct TYPE_17__ {TYPE_5__ dev; struct w6692_hw* hw; } ;
struct w6692_hw {int fmask; int /*<<< orphan*/  list; TYPE_7__ dch; TYPE_4__* bc; int /*<<< orphan*/  addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; TYPE_3__* pdev; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {int nr; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  send; } ;
struct TYPE_18__ {int nr; TYPE_2__ ch; struct w6692_hw* hw; } ;
struct TYPE_15__ {TYPE_8__ bch; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cards ; 
 int ISDN_P_B_HDLC ; 
 int ISDN_P_B_MASK ; 
 int ISDN_P_B_RAW ; 
 int ISDN_P_TE_S0 ; 
 int /*<<< orphan*/  MAX_DATA_MEM ; 
 int /*<<< orphan*/  MAX_DFRAME_LEN_L1 ; 
 scalar_t__ MISDN_MAX_IDLEN ; 
 int /*<<< orphan*/  W6692_ph_bh ; 
 int /*<<< orphan*/  W_B_FIFO_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*) ; 
 int /*<<< orphan*/  card_lock ; 
 int FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct w6692_hw*) ; 
 int FUNC3 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w6692_bctrl ; 
 int w6692_cnt ; 
 int /*<<< orphan*/  w6692_dctrl ; 
 int /*<<< orphan*/  w6692_l1callback ; 
 int /*<<< orphan*/  w6692_l2l1B ; 
 int /*<<< orphan*/  w6692_l2l1D ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(struct w6692_hw *card)
{
	int		i, err;
	u_long		flags;

	FUNC18(card->name, MISDN_MAX_IDLEN - 1, "w6692.%d", w6692_cnt + 1);
	FUNC20(&card_lock, flags);
	FUNC6(&card->list, &Cards);
	FUNC21(&card_lock, flags);
	card->fmask = (1 << w6692_cnt);
	FUNC0(card);
	FUNC19(&card->lock);
	FUNC11(&card->dch, MAX_DFRAME_LEN_L1, W6692_ph_bh);
	card->dch.dev.Dprotocols = (1 << ISDN_P_TE_S0);
	card->dch.dev.D.send = w6692_l2l1D;
	card->dch.dev.D.ctrl = w6692_dctrl;
	card->dch.dev.Bprotocols = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
		(1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
	card->dch.hw = card;
	card->dch.dev.nrbchan = 2;
	for (i = 0; i < 2; i++) {
		FUNC10(&card->bc[i].bch, MAX_DATA_MEM,
				   W_B_FIFO_THRESH);
		card->bc[i].bch.hw = card;
		card->bc[i].bch.nr = i + 1;
		card->bc[i].bch.ch.nr = i + 1;
		card->bc[i].bch.ch.send = w6692_l2l1B;
		card->bc[i].bch.ch.ctrl = w6692_bctrl;
		FUNC16(i + 1, card->dch.dev.channelmap);
		FUNC5(&card->bc[i].bch.ch.list, &card->dch.dev.bchannels);
	}
	err = FUNC17(card);
	if (err)
		goto error_setup;
	err = FUNC12(&card->dch.dev, &card->pdev->dev,
				    card->name);
	if (err)
		goto error_reg;
	err = FUNC3(card);
	if (err)
		goto error_init;
	err = FUNC1(&card->dch, w6692_l1callback);
	if (!err) {
		w6692_cnt++;
		FUNC14("W6692 %d cards installed\n", w6692_cnt);
		return 0;
	}

	FUNC2(card->irq, card);
error_init:
	FUNC13(&card->dch.dev);
error_reg:
	FUNC15(card->addr, 256);
error_setup:
	FUNC8(&card->bc[1].bch);
	FUNC8(&card->bc[0].bch);
	FUNC9(&card->dch);
	FUNC20(&card_lock, flags);
	FUNC7(&card->list);
	FUNC21(&card_lock, flags);
	FUNC4(card);
	return err;
}
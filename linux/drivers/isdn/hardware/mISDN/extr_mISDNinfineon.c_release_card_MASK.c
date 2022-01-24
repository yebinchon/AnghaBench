#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_1__ dch; int /*<<< orphan*/  (* release ) (TYPE_4__*) ;} ;
struct TYPE_6__ {TYPE_4__ isac; } ;
struct inf_hw {int /*<<< orphan*/  pdev; struct inf_hw** sc; TYPE_3__* ci; int /*<<< orphan*/  list; TYPE_2__ ipac; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int typ; } ;

/* Variables and functions */
#define  INF_SCT_1 131 
#define  INF_SCT_2 130 
#define  INF_SCT_3 129 
#define  INF_SCT_4 128 
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC0 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inf_hw*) ; 
 int /*<<< orphan*/  inf_cnt ; 
 int /*<<< orphan*/  FUNC2 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct inf_hw *card) {
	ulong	flags;
	int	i;

	FUNC8(&card->lock, flags);
	FUNC0(card);
	FUNC9(&card->lock, flags);
	card->ipac.isac.release(&card->ipac.isac);
	FUNC1(card->irq, card);
	FUNC4(&card->ipac.isac.dch.dev);
	FUNC7(card);
	FUNC11(&card_lock, flags);
	FUNC3(&card->list);
	FUNC12(&card_lock, flags);
	switch (card->ci->typ) {
	case INF_SCT_2:
	case INF_SCT_3:
	case INF_SCT_4:
		break;
	case INF_SCT_1:
		for (i = 0; i < 3; i++) {
			if (card->sc[i])
				FUNC13(card->sc[i]);
			card->sc[i] = NULL;
		}
		/* fall through */
	default:
		FUNC5(card->pdev);
		FUNC6(card->pdev, NULL);
		break;
	}
	FUNC2(card);
	inf_cnt--;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ dch; int /*<<< orphan*/  (* release ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) (TYPE_2__*) ;} ;
struct sfax_hw {int /*<<< orphan*/  list; int /*<<< orphan*/  pdev; int /*<<< orphan*/  cfg; TYPE_3__ isac; TYPE_2__ isar; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC0 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sfax_cnt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct sfax_hw *card) {
	u_long	flags;

	FUNC8(&card->lock, flags);
	FUNC0(card);
	FUNC9(&card->lock, flags);
	card->isac.release(&card->isac);
	FUNC1(card->irq, card);
	card->isar.release(&card->isar);
	FUNC4(&card->isac.dch.dev);
	FUNC7(card->cfg, 256);
	FUNC5(card->pdev);
	FUNC6(card->pdev, NULL);
	FUNC12(&card_lock, flags);
	FUNC3(&card->list);
	FUNC13(&card_lock, flags);
	FUNC2(card);
	sfax_cnt--;
}
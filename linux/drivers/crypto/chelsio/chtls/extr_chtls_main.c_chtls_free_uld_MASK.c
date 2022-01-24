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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct chtls_dev {int /*<<< orphan*/  askb; struct chtls_dev* lldi; int /*<<< orphan*/ * rspq_skb_cache; int /*<<< orphan*/  hwtid_idr; TYPE_1__ kmap; int /*<<< orphan*/  tlsdev; } ;

/* Variables and functions */
 int RSPQ_HASH_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct chtls_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct chtls_dev *cdev)
{
	int i;

	FUNC4(&cdev->tlsdev);
	FUNC3(cdev->kmap.addr);
	FUNC0(&cdev->hwtid_idr);
	for (i = 0; i < (1 << RSPQ_HASH_BITS); i++)
		FUNC2(cdev->rspq_skb_cache[i]);
	FUNC1(cdev->lldi);
	FUNC2(cdev->askb);
	FUNC1(cdev);
}
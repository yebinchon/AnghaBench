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
struct tpci200_board {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpci200_board*) ; 
 struct tpci200_board* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	struct tpci200_board *tpci200 = FUNC1(dev);

	FUNC0(tpci200);
}
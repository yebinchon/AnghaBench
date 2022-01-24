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
struct nvm_dev {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvm_dev* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

struct nvm_dev *FUNC2(int node)
{
	struct nvm_dev *dev;

	dev = FUNC1(sizeof(struct nvm_dev), GFP_KERNEL, node);
	if (dev)
		FUNC0(&dev->ref);

	return dev;
}
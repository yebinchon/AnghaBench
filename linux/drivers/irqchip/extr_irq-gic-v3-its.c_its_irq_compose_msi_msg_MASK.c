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
typedef  int /*<<< orphan*/  u64 ;
struct msi_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  address_hi; int /*<<< orphan*/  address_lo; } ;
struct its_node {int /*<<< orphan*/  (* get_msi_base ) (struct its_device*) ;} ;
struct its_device {struct its_node* its; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct msi_msg*) ; 
 struct its_device* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d, struct msi_msg *msg)
{
	struct its_device *its_dev = FUNC1(d);
	struct its_node *its;
	u64 addr;

	its = its_dev->its;
	addr = its->get_msi_base(its_dev);

	msg->address_lo		= FUNC4(addr);
	msg->address_hi		= FUNC6(addr);
	msg->data		= FUNC3(d);

	FUNC0(FUNC2(d), msg);
}
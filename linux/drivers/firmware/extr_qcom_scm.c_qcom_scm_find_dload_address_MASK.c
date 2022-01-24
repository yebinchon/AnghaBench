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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,char*,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u64 *addr)
{
	struct device_node *tcsr;
	struct device_node *np = dev->of_node;
	struct resource res;
	u32 offset;
	int ret;

	tcsr = FUNC2(np, "qcom,dload-mode", 0);
	if (!tcsr)
		return 0;

	ret = FUNC0(tcsr, 0, &res);
	FUNC1(tcsr);
	if (ret)
		return ret;

	ret = FUNC3(np, "qcom,dload-mode", 1, &offset);
	if (ret < 0)
		return ret;

	*addr = res.start + offset;

	return 0;
}
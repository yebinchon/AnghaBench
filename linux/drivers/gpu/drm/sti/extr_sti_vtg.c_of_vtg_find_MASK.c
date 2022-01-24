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
struct sti_vtg {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct device_node*) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 

struct sti_vtg *FUNC2(struct device_node *np)
{
	struct platform_device *pdev;

	pdev = FUNC0(np);
	if (!pdev)
		return NULL;

	return (struct sti_vtg *)FUNC1(pdev);
}
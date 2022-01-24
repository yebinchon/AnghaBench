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
struct soc_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct platform_device*) ; 

__attribute__((used)) static struct soc_data *FUNC1(struct platform_device *pdev)
{
	return (struct soc_data *)
			 FUNC0(pdev)->driver_data;
}
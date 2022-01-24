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
struct platform_device {int id; } ;
struct device {int dummy; } ;
typedef  enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC3(dev);
	enum dfl_id_type type = FUNC1(pdev);
	int id = pdev->id;

	FUNC2(pdev);

	FUNC0(type, id);

	return 0;
}
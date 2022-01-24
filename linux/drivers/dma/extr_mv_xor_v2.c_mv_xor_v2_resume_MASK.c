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
struct platform_device {int dummy; } ;
struct mv_xor_v2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_xor_v2_device*) ; 
 struct mv_xor_v2_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct mv_xor_v2_device *xor_dev = FUNC3(dev);

	FUNC2(xor_dev);
	FUNC1(xor_dev);
	FUNC0(xor_dev);

	return 0;
}
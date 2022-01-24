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
typedef  size_t u8 ;
struct mcp3422 {int /*<<< orphan*/  config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct mcp3422* FUNC2 (int /*<<< orphan*/ ) ; 
 int** mcp3422_scales ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct mcp3422 *adc = FUNC2(FUNC1(dev));
	u8 sample_rate = FUNC0(adc->config);

	return FUNC3(buf, "0.%09u 0.%09u 0.%09u 0.%09u\n",
		mcp3422_scales[sample_rate][0],
		mcp3422_scales[sample_rate][1],
		mcp3422_scales[sample_rate][2],
		mcp3422_scales[sample_rate][3]);
}
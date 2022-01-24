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
typedef  int /*<<< orphan*/  count ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DLN2_GPIO_GET_PIN_COUNT ; 
 int EPROTO ; 
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int ret;
	__le16 count;
	int len = sizeof(count);

	ret = FUNC0(pdev, DLN2_GPIO_GET_PIN_COUNT, &count, &len);
	if (ret < 0)
		return ret;
	if (len < sizeof(count))
		return -EPROTO;

	return FUNC1(count);
}
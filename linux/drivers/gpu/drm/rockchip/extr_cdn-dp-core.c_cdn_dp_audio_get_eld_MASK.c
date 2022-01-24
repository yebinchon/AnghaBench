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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  eld; } ;
struct cdn_dp_device {TYPE_1__ connector; } ;

/* Variables and functions */
 struct cdn_dp_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data,
				u8 *buf, size_t len)
{
	struct cdn_dp_device *dp = FUNC0(dev);

	FUNC1(buf, dp->connector.eld, FUNC2(sizeof(dp->connector.eld), len));

	return 0;
}
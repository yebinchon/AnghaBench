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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  eld; } ;
struct sii902x {int /*<<< orphan*/  mutex; TYPE_1__ connector; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sii902x* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data,
				 uint8_t *buf, size_t len)
{
	struct sii902x *sii902x = FUNC0(dev);

	FUNC3(&sii902x->mutex);

	FUNC1(buf, sii902x->connector.eld,
	       FUNC2(sizeof(sii902x->connector.eld), len));

	FUNC4(&sii902x->mutex);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct va_format {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct ib_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct va_format*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,struct va_format*,...) ; 

__attribute__((used)) static void FUNC4(const char *level, const struct ib_device *ibdev,
			   struct va_format *vaf)
{
	if (ibdev && ibdev->dev.parent)
		FUNC2(level[1] - '0',
				ibdev->dev.parent,
				"%s %s %s: %pV",
				FUNC0(ibdev->dev.parent),
				FUNC1(ibdev->dev.parent),
				FUNC1(&ibdev->dev),
				vaf);
	else if (ibdev)
		FUNC3("%s%s: %pV",
		       level, FUNC1(&ibdev->dev), vaf);
	else
		FUNC3("%s(NULL ib_device): %pV", level, vaf);
}
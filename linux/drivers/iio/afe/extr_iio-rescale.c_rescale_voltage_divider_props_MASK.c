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
typedef  int /*<<< orphan*/  u32 ;
struct rescale {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					 struct rescale *rescale)
{
	int ret;
	u32 factor;

	ret = FUNC1(dev, "output-ohms",
				       &rescale->denominator);
	if (ret) {
		FUNC0(dev, "failed to read output-ohms: %d\n", ret);
		return ret;
	}

	ret = FUNC1(dev, "full-ohms",
				       &rescale->numerator);
	if (ret) {
		FUNC0(dev, "failed to read full-ohms: %d\n", ret);
		return ret;
	}

	factor = FUNC2(rescale->numerator, rescale->denominator);
	rescale->numerator /= factor;
	rescale->denominator /= factor;

	return 0;
}
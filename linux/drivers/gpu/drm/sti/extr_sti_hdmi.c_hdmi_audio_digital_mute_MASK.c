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
struct sti_hdmi {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  HDMI_SAMPLE_FLAT_ALL ; 
 int /*<<< orphan*/  HDMI_SAMPLE_FLAT_MASK ; 
 int /*<<< orphan*/  HDMI_SAMPLE_FLAT_NO ; 
 struct sti_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data, bool enable)
{
	struct sti_hdmi *hdmi = FUNC1(dev);

	FUNC0("%s\n", enable ? "enable" : "disable");

	if (enable)
		FUNC2(hdmi, HDMI_SAMPLE_FLAT_ALL, HDMI_SAMPLE_FLAT_MASK);
	else
		FUNC2(hdmi, HDMI_SAMPLE_FLAT_NO, HDMI_SAMPLE_FLAT_MASK);

	return 0;
}
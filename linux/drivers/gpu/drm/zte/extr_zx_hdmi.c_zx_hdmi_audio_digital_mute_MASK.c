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
struct zx_hdmi {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPI_AUD_CONFIG ; 
 int /*<<< orphan*/  TPI_AUD_MUTE ; 
 struct zx_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct zx_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data,
				      bool enable)
{
	struct zx_hdmi *hdmi = FUNC0(dev);

	if (enable)
		FUNC1(hdmi, TPI_AUD_CONFIG, TPI_AUD_MUTE,
				 TPI_AUD_MUTE);
	else
		FUNC1(hdmi, TPI_AUD_CONFIG, TPI_AUD_MUTE, 0);

	return 0;
}
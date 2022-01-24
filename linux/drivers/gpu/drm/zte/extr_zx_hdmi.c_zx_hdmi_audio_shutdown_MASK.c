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
 int /*<<< orphan*/  AUD_EN ; 
 int /*<<< orphan*/  AUD_IN_EN ; 
 struct zx_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct zx_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, void *data)
{
	struct zx_hdmi *hdmi = FUNC0(dev);

	/* Disable audio input */
	FUNC1(hdmi, AUD_EN, AUD_IN_EN, 0);
}
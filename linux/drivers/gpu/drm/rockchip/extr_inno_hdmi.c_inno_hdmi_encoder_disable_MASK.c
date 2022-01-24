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
struct inno_hdmi {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOWER_PWR ; 
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi*,int /*<<< orphan*/ ) ; 
 struct inno_hdmi* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC2(struct drm_encoder *encoder)
{
	struct inno_hdmi *hdmi = FUNC1(encoder);

	FUNC0(hdmi, LOWER_PWR);
}
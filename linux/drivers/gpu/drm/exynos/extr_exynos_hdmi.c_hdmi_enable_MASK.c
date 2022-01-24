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
struct hdmi_context {int /*<<< orphan*/  mutex; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 struct hdmi_context* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct hdmi_context *hdata = FUNC0(encoder);

	FUNC3(&hdata->mutex);

	FUNC2(hdata);
	FUNC1(hdata);

	FUNC4(&hdata->mutex);
}
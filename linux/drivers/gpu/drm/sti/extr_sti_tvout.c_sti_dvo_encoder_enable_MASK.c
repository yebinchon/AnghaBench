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
struct sti_tvout {int dummy; } ;
struct drm_encoder {TYPE_1__* crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct sti_tvout* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_tvout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_tvout*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct sti_tvout *tvout = FUNC1(encoder);

	FUNC3(tvout, &encoder->crtc->mode);

	FUNC2(tvout, FUNC0(encoder->crtc));
}
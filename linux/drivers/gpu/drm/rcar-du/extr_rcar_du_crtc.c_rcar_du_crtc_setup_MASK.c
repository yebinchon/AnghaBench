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
struct rcar_du_crtc {int index; int /*<<< orphan*/  crtc; int /*<<< orphan*/  dev; int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS1PR ; 
 int /*<<< orphan*/  DS2PR ; 
 int /*<<< orphan*/  RCAR_DU_FEATURE_VSP1_SOURCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_du_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rcar_du_crtc*) ; 

__attribute__((used)) static void FUNC9(struct rcar_du_crtc *rcrtc)
{
	/* Set display off and background to black */
	FUNC4(rcrtc, DOOR, FUNC1(0, 0, 0));
	FUNC4(rcrtc, BPOR, FUNC0(0, 0, 0));

	/* Configure display timings and output routing */
	FUNC3(rcrtc);
	FUNC5(rcrtc->group);

	/* Start with all planes disabled. */
	FUNC6(rcrtc->group, rcrtc->index % 2 ? DS2PR : DS1PR, 0);

	/* Enable the VSP compositor. */
	if (FUNC7(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
		FUNC8(rcrtc);

	/* Turn vertical blanking interrupt reporting on. */
	FUNC2(&rcrtc->crtc);
}
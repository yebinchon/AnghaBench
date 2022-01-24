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
struct rcar_du_device {int /*<<< orphan*/  dev; } ;
struct rcar_du_crtc {int /*<<< orphan*/  flip_wait; struct rcar_du_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rcar_du_crtc *rcrtc)
{
	struct rcar_du_device *rcdu = rcrtc->dev;

	if (FUNC4(rcrtc->flip_wait,
			       !FUNC3(rcrtc),
			       FUNC1(50)))
		return;

	FUNC0(rcdu->dev, "page flip timeout\n");

	FUNC2(rcrtc);
}
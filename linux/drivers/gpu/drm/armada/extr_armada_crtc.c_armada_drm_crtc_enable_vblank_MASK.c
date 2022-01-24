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
struct drm_crtc {int dummy; } ;
struct armada_crtc {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSYNC_IRQ_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct armada_crtc*,int /*<<< orphan*/ ) ; 
 struct armada_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct drm_crtc *crtc)
{
	struct armada_crtc *dcrtc = FUNC1(crtc);
	unsigned long flags;

	FUNC2(&dcrtc->irq_lock, flags);
	FUNC0(dcrtc, VSYNC_IRQ_ENA);
	FUNC3(&dcrtc->irq_lock, flags);
	return 0;
}
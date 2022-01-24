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
struct device {int dummy; } ;
struct armada_crtc {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct armada_crtc* FUNC1 (struct device*) ; 

__attribute__((used)) static void
FUNC2(struct device *dev, struct device *master, void *data)
{
	struct armada_crtc *dcrtc = FUNC1(dev);

	FUNC0(&dcrtc->crtc);
}
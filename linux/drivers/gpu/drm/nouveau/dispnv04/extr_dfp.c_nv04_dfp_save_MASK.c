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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct nouveau_encoder {int /*<<< orphan*/  dcb; TYPE_1__ restore; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_encoder* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct nouveau_encoder *nv_encoder = FUNC0(encoder);
	struct drm_device *dev = encoder->dev;

	if (FUNC2(dev))
		nv_encoder->restore.head =
			FUNC1(dev, nv_encoder->dcb);
}
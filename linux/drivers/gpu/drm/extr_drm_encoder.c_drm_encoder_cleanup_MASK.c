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
struct drm_encoder {int /*<<< orphan*/  head; int /*<<< orphan*/  name; int /*<<< orphan*/  base; struct drm_bridge* bridge; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_encoder; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_bridge {struct drm_bridge* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;

	/* Note that the encoder_list is considered to be static; should we
	 * remove the drm_encoder at runtime we would have to decrement all
	 * the indices on the drm_encoder after us in the encoder_list.
	 */

	if (encoder->bridge) {
		struct drm_bridge *bridge = encoder->bridge;
		struct drm_bridge *next;

		while (bridge) {
			next = bridge->next;
			FUNC0(bridge);
			bridge = next;
		}
	}

	FUNC1(dev, &encoder->base);
	FUNC2(encoder->name);
	FUNC3(&encoder->head);
	dev->mode_config.num_encoder--;

	FUNC4(encoder, 0, sizeof(*encoder));
}
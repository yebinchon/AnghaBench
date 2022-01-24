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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  content_protection_property; int /*<<< orphan*/  connection_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector_state {scalar_t__ content_protection; } ;
struct drm_connector {struct drm_connector_state* state; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_connector *connector,
					u64 val)
{
	struct drm_device *dev = connector->dev;
	struct drm_connector_state *state = connector->state;

	FUNC0(!FUNC1(&dev->mode_config.connection_mutex));
	if (state->content_protection == val)
		return;

	state->content_protection = val;
	FUNC2(connector,
				 dev->mode_config.content_protection_property);
}
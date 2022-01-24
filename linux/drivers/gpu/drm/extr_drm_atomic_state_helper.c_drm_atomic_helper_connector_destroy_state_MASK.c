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
struct drm_connector_state {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector_state*) ; 

void FUNC2(struct drm_connector *connector,
					  struct drm_connector_state *state)
{
	FUNC0(state);
	FUNC1(state);
}
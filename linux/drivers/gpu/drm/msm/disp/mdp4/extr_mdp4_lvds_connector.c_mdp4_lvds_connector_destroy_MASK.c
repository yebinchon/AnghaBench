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
struct mdp4_lvds_connector {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp4_lvds_connector*) ; 
 struct mdp4_lvds_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC3(struct drm_connector *connector)
{
	struct mdp4_lvds_connector *mdp4_lvds_connector =
			FUNC2(connector);

	FUNC0(connector);

	FUNC1(mdp4_lvds_connector);
}
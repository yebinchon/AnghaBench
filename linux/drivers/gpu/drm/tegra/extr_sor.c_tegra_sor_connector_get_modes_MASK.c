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
struct tegra_sor {scalar_t__ aux; } ;
struct tegra_output {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct tegra_output* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct drm_connector*) ; 
 struct tegra_sor* FUNC4 (struct tegra_output*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct tegra_output *output = FUNC0(connector);
	struct tegra_sor *sor = FUNC4(output);
	int err;

	if (sor->aux)
		FUNC2(sor->aux);

	err = FUNC3(connector);

	if (sor->aux)
		FUNC1(sor->aux);

	return err;
}
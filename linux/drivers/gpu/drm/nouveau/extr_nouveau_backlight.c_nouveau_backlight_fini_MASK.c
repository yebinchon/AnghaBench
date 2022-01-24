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
struct nouveau_connector {struct nouveau_backlight* backlight; } ;
struct nouveau_backlight {scalar_t__ id; int /*<<< orphan*/  dev; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bl_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_backlight*) ; 
 struct nouveau_connector* FUNC3 (struct drm_connector*) ; 

void
FUNC4(struct drm_connector *connector)
{
	struct nouveau_connector *nv_conn = FUNC3(connector);
	struct nouveau_backlight *bl = nv_conn->backlight;

	if (!bl)
		return;

	if (bl->id >= 0)
		FUNC1(&bl_ida, bl->id);

	FUNC0(bl->dev);
	nv_conn->backlight = NULL;
	FUNC2(bl);
}
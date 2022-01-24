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
typedef  int u8 ;
struct drm_display_info {int rgb_quant_range_selectable; } ;
struct drm_connector {struct drm_display_info display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int const) ; 
 int const EDID_CEA_VCDB_QS ; 

__attribute__((used)) static void FUNC1(struct drm_connector *connector, const u8 *db)
{
	struct drm_display_info *info = &connector->display_info;

	FUNC0("CEA VCDB 0x%02x\n", db[2]);

	if (db[2] & EDID_CEA_VCDB_QS)
		info->rgb_quant_range_selectable = true;
}
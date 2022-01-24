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
struct edid {int dummy; } ;
struct drm_connector {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct edid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* edid_firmware ; 
 struct edid* FUNC1 (struct drm_connector*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 char* FUNC7 (char**,char*) ; 

struct edid *FUNC8(struct drm_connector *connector)
{
	const char *connector_name = connector->name;
	char *edidname, *last, *colon, *fwstr, *edidstr, *fallback = NULL;
	struct edid *edid;

	if (edid_firmware[0] == '\0')
		return FUNC0(-ENOENT);

	/*
	 * If there are multiple edid files specified and separated
	 * by commas, search through the list looking for one that
	 * matches the connector.
	 *
	 * If there's one or more that doesn't specify a connector, keep
	 * the last one found one as a fallback.
	 */
	fwstr = FUNC3(edid_firmware, GFP_KERNEL);
	if (!fwstr)
		return FUNC0(-ENOMEM);
	edidstr = fwstr;

	while ((edidname = FUNC7(&edidstr, ","))) {
		colon = FUNC4(edidname, ':');
		if (colon != NULL) {
			if (FUNC6(connector_name, edidname, colon - edidname))
				continue;
			edidname = colon + 1;
			break;
		}

		if (*edidname != '\0') /* corner case: multiple ',' */
			fallback = edidname;
	}

	if (!edidname) {
		if (!fallback) {
			FUNC2(fwstr);
			return FUNC0(-ENOENT);
		}
		edidname = fallback;
	}

	last = edidname + FUNC5(edidname) - 1;
	if (*last == '\n')
		*last = '\0';

	edid = FUNC1(connector, edidname, connector_name);
	FUNC2(fwstr);

	return edid;
}
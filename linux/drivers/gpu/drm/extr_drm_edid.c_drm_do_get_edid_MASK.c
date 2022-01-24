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
struct edid {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  null_edid_counter; int /*<<< orphan*/  edid_corrupt; } ;

/* Variables and functions */
 int EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int*,int) ; 
 scalar_t__ FUNC1 (int*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 struct edid* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 

struct edid *FUNC9(struct drm_connector *connector,
	int (*get_edid_block)(void *data, u8 *buf, unsigned int block,
			      size_t len),
	void *data)
{
	int i, j = 0, valid_extensions = 0;
	u8 *edid, *new;
	struct edid *override;

	override = FUNC3(connector);
	if (override)
		return override;

	if ((edid = FUNC5(EDID_LENGTH, GFP_KERNEL)) == NULL)
		return NULL;

	/* base block fetch */
	for (i = 0; i < 4; i++) {
		if (get_edid_block(data, edid, 0, EDID_LENGTH))
			goto out;
		if (FUNC1(edid, 0, false,
					 &connector->edid_corrupt))
			break;
		if (i == 0 && FUNC2(edid, EDID_LENGTH)) {
			connector->null_edid_counter++;
			goto carp;
		}
	}
	if (i == 4)
		goto carp;

	/* if there's no extensions, we're done */
	valid_extensions = edid[0x7e];
	if (valid_extensions == 0)
		return (struct edid *)edid;

	new = FUNC7(edid, (valid_extensions + 1) * EDID_LENGTH, GFP_KERNEL);
	if (!new)
		goto out;
	edid = new;

	for (j = 1; j <= edid[0x7e]; j++) {
		u8 *block = edid + j * EDID_LENGTH;

		for (i = 0; i < 4; i++) {
			if (get_edid_block(data, block, j, EDID_LENGTH))
				goto out;
			if (FUNC1(block, j, false, NULL))
				break;
		}

		if (i == 4)
			valid_extensions--;
	}

	if (valid_extensions != edid[0x7e]) {
		u8 *base;

		FUNC0(connector, edid, edid[0x7e] + 1);

		edid[EDID_LENGTH-1] += edid[0x7e] - valid_extensions;
		edid[0x7e] = valid_extensions;

		new = FUNC6(valid_extensions + 1, EDID_LENGTH,
				    GFP_KERNEL);
		if (!new)
			goto out;

		base = new;
		for (i = 0; i <= edid[0x7e]; i++) {
			u8 *block = edid + i * EDID_LENGTH;

			if (!FUNC1(block, i, false, NULL))
				continue;

			FUNC8(base, block, EDID_LENGTH);
			base += EDID_LENGTH;
		}

		FUNC4(edid);
		edid = new;
	}

	return (struct edid *)edid;

carp:
	FUNC0(connector, edid, 1);
out:
	FUNC4(edid);
	return NULL;
}
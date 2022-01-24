#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {struct drm_crtc* i_private; } ;
struct file {int dummy; } ;
struct drm_crtc_crc_entry {int dummy; } ;
struct drm_crtc_crc {int opened; size_t values_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  source; struct drm_crtc_crc_entry* entries; } ;
struct drm_crtc {TYPE_2__* funcs; int /*<<< orphan*/  mutex; TYPE_1__* state; int /*<<< orphan*/  dev; struct drm_crtc_crc crc; } ;
struct TYPE_4__ {int (* verify_crc_source ) (struct drm_crtc*,int /*<<< orphan*/ ,size_t*) ;int (* set_crc_source ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CRC_ENTRIES_NR ; 
 size_t DRM_MAX_CRC_NR ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc_crc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_crtc_crc_entry* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc_crc_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct drm_crtc*,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC10 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *filep)
{
	struct drm_crtc *crtc = inode->i_private;
	struct drm_crtc_crc *crc = &crtc->crc;
	struct drm_crtc_crc_entry *entries = NULL;
	size_t values_cnt;
	int ret = 0;

	if (FUNC2(crtc->dev)) {
		ret = FUNC3(&crtc->mutex);
		if (ret)
			return ret;

		if (!crtc->state->active)
			ret = -EIO;
		FUNC4(&crtc->mutex);

		if (ret)
			return ret;
	}

	ret = crtc->funcs->verify_crc_source(crtc, crc->source, &values_cnt);
	if (ret)
		return ret;

	if (FUNC0(values_cnt > DRM_MAX_CRC_NR))
		return -EINVAL;

	if (FUNC0(values_cnt == 0))
		return -EINVAL;

	entries = FUNC5(DRM_CRC_ENTRIES_NR, sizeof(*entries), GFP_KERNEL);
	if (!entries)
		return -ENOMEM;

	FUNC7(&crc->lock);
	if (!crc->opened) {
		crc->opened = true;
		crc->entries = entries;
		crc->values_cnt = values_cnt;
	} else {
		ret = -EBUSY;
	}
	FUNC8(&crc->lock);

	if (ret) {
		FUNC6(entries);
		return ret;
	}

	ret = crtc->funcs->set_crc_source(crtc, crc->source);
	if (ret)
		goto err;

	return 0;

err:
	FUNC7(&crc->lock);
	FUNC1(crc);
	FUNC8(&crc->lock);
	return ret;
}
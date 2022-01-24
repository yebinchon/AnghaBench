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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_crtc_crc_entry {int has_frame_counter; int /*<<< orphan*/  crcs; int /*<<< orphan*/  frame; } ;
struct drm_crtc_crc {int head; int tail; int overflow; int values_cnt; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; struct drm_crtc_crc_entry* entries; } ;
struct drm_crtc {struct drm_crtc_crc crc; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int DRM_CRC_ENTRIES_NR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_crtc *crtc, bool has_frame,
			   uint32_t frame, uint32_t *crcs)
{
	struct drm_crtc_crc *crc = &crtc->crc;
	struct drm_crtc_crc_entry *entry;
	int head, tail;
	unsigned long flags;

	FUNC3(&crc->lock, flags);

	/* Caller may not have noticed yet that userspace has stopped reading */
	if (!crc->entries) {
		FUNC4(&crc->lock, flags);
		return -EINVAL;
	}

	head = crc->head;
	tail = crc->tail;

	if (FUNC0(head, tail, DRM_CRC_ENTRIES_NR) < 1) {
		bool was_overflow = crc->overflow;

		crc->overflow = true;
		FUNC4(&crc->lock, flags);

		if (!was_overflow)
			FUNC1("Overflow of CRC buffer, userspace reads too slow.\n");

		return -ENOBUFS;
	}

	entry = &crc->entries[head];
	entry->frame = frame;
	entry->has_frame_counter = has_frame;
	FUNC2(&entry->crcs, crcs, sizeof(*crcs) * crc->values_cnt);

	head = (head + 1) & (DRM_CRC_ENTRIES_NR - 1);
	crc->head = head;

	FUNC4(&crc->lock, flags);

	FUNC5(&crc->wq);

	return 0;
}
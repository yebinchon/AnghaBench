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
struct file {TYPE_1__* f_inode; } ;
struct drm_crtc_crc {int /*<<< orphan*/  lock; scalar_t__ source; int /*<<< orphan*/  wq; } ;
struct drm_crtc {struct drm_crtc_crc crc; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {struct drm_crtc* i_private; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 (struct drm_crtc_crc*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *wait)
{
	struct drm_crtc *crtc = file->f_inode->i_private;
	struct drm_crtc_crc *crc = &crtc->crc;
	unsigned ret;

	FUNC1(file, &crc->wq, wait);

	FUNC2(&crc->lock);
	if (crc->source && FUNC0(crc))
		ret = POLLIN | POLLRDNORM;
	else
		ret = 0;
	FUNC3(&crc->lock);

	return ret;
}
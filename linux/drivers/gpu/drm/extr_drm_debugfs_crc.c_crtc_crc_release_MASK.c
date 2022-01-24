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
struct inode {int dummy; } ;
struct file {TYPE_1__* f_inode; } ;
struct drm_crtc_crc {int /*<<< orphan*/  lock; } ;
struct drm_crtc {TYPE_2__* funcs; struct drm_crtc_crc crc; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_crc_source ) (struct drm_crtc*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {struct drm_crtc* i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc_crc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filep)
{
	struct drm_crtc *crtc = filep->f_inode->i_private;
	struct drm_crtc_crc *crc = &crtc->crc;

	crtc->funcs->set_crc_source(crtc, NULL);

	FUNC1(&crc->lock);
	FUNC0(crc);
	FUNC2(&crc->lock);

	return 0;
}
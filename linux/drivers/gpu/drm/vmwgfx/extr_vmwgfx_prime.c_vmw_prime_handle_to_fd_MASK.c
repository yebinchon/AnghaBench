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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_object_file {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;

/* Variables and functions */
 int FUNC0 (struct ttm_object_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC1 (struct drm_file*) ; 

int FUNC2(struct drm_device *dev,
			   struct drm_file *file_priv,
			   uint32_t handle, uint32_t flags,
			   int *prime_fd)
{
	struct ttm_object_file *tfile = FUNC1(file_priv)->tfile;

	return FUNC0(tfile, handle, flags, prime_fd);
}
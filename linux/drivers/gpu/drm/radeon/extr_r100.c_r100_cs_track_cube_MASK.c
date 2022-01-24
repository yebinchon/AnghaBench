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
struct radeon_device {int dummy; } ;
struct radeon_bo {int dummy; } ;
struct r100_cs_track {TYPE_2__* textures; } ;
struct TYPE_4__ {unsigned int compress_format; unsigned long cpp; TYPE_1__* cube_info; } ;
struct TYPE_3__ {unsigned int width; unsigned int height; scalar_t__ offset; struct radeon_bo* robj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned long FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 unsigned long FUNC3 (struct radeon_bo*) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
			      struct r100_cs_track *track, unsigned idx)
{
	unsigned face, w, h;
	struct radeon_bo *cube_robj;
	unsigned long size;
	unsigned compress_format = track->textures[idx].compress_format;

	for (face = 0; face < 5; face++) {
		cube_robj = track->textures[idx].cube_info[face].robj;
		w = track->textures[idx].cube_info[face].width;
		h = track->textures[idx].cube_info[face].height;

		if (compress_format) {
			size = FUNC2(compress_format, w, h);
		} else
			size = w * h;
		size *= track->textures[idx].cpp;

		size += track->textures[idx].cube_info[face].offset;

		if (size > FUNC3(cube_robj)) {
			FUNC0("Cube texture offset greater than object size %lu %lu\n",
				  size, FUNC3(cube_robj));
			FUNC1(&track->textures[idx]);
			return -1;
		}
	}
	return 0;
}
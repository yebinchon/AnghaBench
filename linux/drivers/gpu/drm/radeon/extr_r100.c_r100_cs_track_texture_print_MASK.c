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
struct r100_cs_track_texture {int /*<<< orphan*/  compress_format; int /*<<< orphan*/  roundup_h; int /*<<< orphan*/  roundup_w; int /*<<< orphan*/  tex_coord_type; int /*<<< orphan*/  cpp; int /*<<< orphan*/  txdepth; int /*<<< orphan*/  num_levels; int /*<<< orphan*/  height_11; int /*<<< orphan*/  height; int /*<<< orphan*/  width_11; int /*<<< orphan*/  width; int /*<<< orphan*/  use_pitch; int /*<<< orphan*/  pitch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct r100_cs_track_texture *t)
{
	FUNC0("pitch                      %d\n", t->pitch);
	FUNC0("use_pitch                  %d\n", t->use_pitch);
	FUNC0("width                      %d\n", t->width);
	FUNC0("width_11                   %d\n", t->width_11);
	FUNC0("height                     %d\n", t->height);
	FUNC0("height_11                  %d\n", t->height_11);
	FUNC0("num levels                 %d\n", t->num_levels);
	FUNC0("depth                      %d\n", t->txdepth);
	FUNC0("bpp                        %d\n", t->cpp);
	FUNC0("coordinate type            %d\n", t->tex_coord_type);
	FUNC0("width round to power of 2  %d\n", t->roundup_w);
	FUNC0("height round to power of 2 %d\n", t->roundup_h);
	FUNC0("compress format            %d\n", t->compress_format);
}
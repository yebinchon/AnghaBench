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
struct ff_device {int /*<<< orphan*/  ffbit; } ;

/* Variables and functions */
 int FF_PERIODIC ; 
 int FF_RUMBLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ff_device *ff, int effect_type)
{

	if (FUNC1(effect_type, ff->ffbit))
		return effect_type;

	if (effect_type == FF_PERIODIC && FUNC1(FF_RUMBLE, ff->ffbit))
		return FF_RUMBLE;

	FUNC0("invalid type in get_compatible_type()\n");

	return 0;
}
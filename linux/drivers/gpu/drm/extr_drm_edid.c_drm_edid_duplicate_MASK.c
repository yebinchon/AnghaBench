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
struct edid {int extensions; } ;

/* Variables and functions */
 int EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct edid* FUNC0 (struct edid const*,int,int /*<<< orphan*/ ) ; 

struct edid *FUNC1(const struct edid *edid)
{
	return FUNC0(edid, (edid->extensions + 1) * EDID_LENGTH, GFP_KERNEL);
}
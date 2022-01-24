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
struct drm_atomic_state {int dummy; } ;
struct nv50_atom {struct drm_atomic_state state; int /*<<< orphan*/  outp; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_atom*) ; 
 struct nv50_atom* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_atomic_state *
FUNC4(struct drm_device *dev)
{
	struct nv50_atom *atom;
	if (!(atom = FUNC3(sizeof(*atom), GFP_KERNEL)) ||
	    FUNC1(dev, &atom->state) < 0) {
		FUNC2(atom);
		return NULL;
	}
	FUNC0(&atom->outp);
	return &atom->state;
}
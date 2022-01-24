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
struct validate_op {int /*<<< orphan*/  ticket; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct drm_nouveau_gem_pushbuf_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct validate_op*,struct nouveau_channel*,struct nouveau_fence*,struct drm_nouveau_gem_pushbuf_bo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct validate_op *op, struct nouveau_channel *chan,
	      struct nouveau_fence *fence,
	      struct drm_nouveau_gem_pushbuf_bo *pbbo)
{
	FUNC0(op, chan, fence, pbbo);
	FUNC1(&op->ticket);
}
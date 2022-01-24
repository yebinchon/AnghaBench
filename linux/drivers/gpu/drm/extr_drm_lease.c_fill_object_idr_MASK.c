#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct idr {int dummy; } ;
struct drm_mode_object {scalar_t__ type; int id; } ;
struct drm_file {int /*<<< orphan*/  universal_planes; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {TYPE_4__* cursor; TYPE_2__* primary; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_3__ base; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_ANY ; 
 scalar_t__ DRM_MODE_OBJECT_CRTC ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_lease_idr_object ; 
 struct drm_mode_object* FUNC3 (struct drm_device*,struct drm_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_mode_object*) ; 
 int FUNC6 (struct idr*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct drm_mode_object** FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_mode_object**) ; 
 struct drm_crtc* FUNC9 (struct drm_mode_object*) ; 
 int FUNC10 (struct drm_device*,int,struct drm_mode_object**,int) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev,
			   struct drm_file *lessor_priv,
			   struct idr *leases,
			   int object_count,
			   u32 *object_ids)
{
	struct drm_mode_object **objects;
	u32 o;
	int ret;
	bool universal_planes = FUNC2(lessor_priv->universal_planes);

	objects = FUNC7(object_count, sizeof(struct drm_mode_object *),
			  GFP_KERNEL);
	if (!objects)
		return -ENOMEM;

	/* step one - get references to all the mode objects
	   and check for validity. */
	for (o = 0; o < object_count; o++) {
		objects[o] = FUNC3(dev, lessor_priv,
						  object_ids[o],
						  DRM_MODE_OBJECT_ANY);
		if (!objects[o]) {
			ret = -ENOENT;
			goto out_free_objects;
		}

		if (!FUNC4(objects[o]->type)) {
			FUNC0("invalid object for lease\n");
			ret = -EINVAL;
			goto out_free_objects;
		}
	}

	ret = FUNC10(dev, object_count, objects, universal_planes);
	if (ret) {
		FUNC1("lease validation failed\n");
		goto out_free_objects;
	}

	/* add their IDs to the lease request - taking into account
	   universal planes */
	for (o = 0; o < object_count; o++) {
		struct drm_mode_object *obj = objects[o];
		u32 object_id = objects[o]->id;
		FUNC1("Adding object %d to lease\n", object_id);

		/*
		 * We're using an IDR to hold the set of leased
		 * objects, but we don't need to point at the object's
		 * data structure from the lease as the main object_idr
		 * will be used to actually find that. Instead, all we
		 * really want is a 'leased/not-leased' result, for
		 * which any non-NULL pointer will work fine.
		 */
		ret = FUNC6(leases, &drm_lease_idr_object , object_id, object_id + 1, GFP_KERNEL);
		if (ret < 0) {
			FUNC1("Object %d cannot be inserted into leases (%d)\n",
					object_id, ret);
			goto out_free_objects;
		}
		if (obj->type == DRM_MODE_OBJECT_CRTC && !universal_planes) {
			struct drm_crtc *crtc = FUNC9(obj);
			ret = FUNC6(leases, &drm_lease_idr_object, crtc->primary->base.id, crtc->primary->base.id + 1, GFP_KERNEL);
			if (ret < 0) {
				FUNC1("Object primary plane %d cannot be inserted into leases (%d)\n",
						object_id, ret);
				goto out_free_objects;
			}
			if (crtc->cursor) {
				ret = FUNC6(leases, &drm_lease_idr_object, crtc->cursor->base.id, crtc->cursor->base.id + 1, GFP_KERNEL);
				if (ret < 0) {
					FUNC1("Object cursor plane %d cannot be inserted into leases (%d)\n",
							object_id, ret);
					goto out_free_objects;
				}
			}
		}
	}

	ret = 0;
out_free_objects:
	for (o = 0; o < object_count; o++) {
		if (objects[o])
			FUNC5(objects[o]);
	}
	FUNC8(objects);
	return ret;
}
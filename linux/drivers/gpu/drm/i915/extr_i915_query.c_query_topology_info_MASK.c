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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  topo ;
struct drm_i915_query_topology_info {scalar_t__ flags; int max_slices; int max_subslices; int max_eus_per_subslice; int subslice_offset; int subslice_stride; int eu_offset; int eu_stride; } ;
struct sseu_dev_info {int max_subslices; int max_eus_per_subslice; int max_slices; struct drm_i915_query_topology_info* eu_mask; struct drm_i915_query_topology_info* subslice_mask; struct drm_i915_query_topology_info slice_mask; } ;
struct drm_i915_query_item {scalar_t__ flags; scalar_t__ data_ptr; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct drm_i915_query_topology_info*,int) ; 
 int FUNC4 (struct drm_i915_query_topology_info*,int,int,struct drm_i915_query_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_query_topology_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_private *dev_priv,
			       struct drm_i915_query_item *query_item)
{
	const struct sseu_dev_info *sseu = &FUNC2(dev_priv)->sseu;
	struct drm_i915_query_topology_info topo;
	u32 slice_length, subslice_length, eu_length, total_length;
	u8 subslice_stride = FUNC1(sseu->max_subslices);
	u8 eu_stride = FUNC1(sseu->max_eus_per_subslice);
	int ret;

	if (query_item->flags != 0)
		return -EINVAL;

	if (sseu->max_slices == 0)
		return -ENODEV;

	FUNC0(sizeof(u8) != sizeof(sseu->slice_mask));

	slice_length = sizeof(sseu->slice_mask);
	subslice_length = sseu->max_slices * subslice_stride;
	eu_length = sseu->max_slices * sseu->max_subslices * eu_stride;
	total_length = sizeof(topo) + slice_length + subslice_length +
		       eu_length;

	ret = FUNC4(&topo, sizeof(topo), total_length,
			      query_item);
	if (ret != 0)
		return ret;

	if (topo.flags != 0)
		return -EINVAL;

	FUNC5(&topo, 0, sizeof(topo));
	topo.max_slices = sseu->max_slices;
	topo.max_subslices = sseu->max_subslices;
	topo.max_eus_per_subslice = sseu->max_eus_per_subslice;

	topo.subslice_offset = slice_length;
	topo.subslice_stride = subslice_stride;
	topo.eu_offset = slice_length + subslice_length;
	topo.eu_stride = eu_stride;

	if (FUNC3(FUNC6(query_item->data_ptr),
			   &topo, sizeof(topo)))
		return -EFAULT;

	if (FUNC3(FUNC6(query_item->data_ptr + sizeof(topo)),
			   &sseu->slice_mask, slice_length))
		return -EFAULT;

	if (FUNC3(FUNC6(query_item->data_ptr +
					   sizeof(topo) + slice_length),
			   sseu->subslice_mask, subslice_length))
		return -EFAULT;

	if (FUNC3(FUNC6(query_item->data_ptr +
					   sizeof(topo) +
					   slice_length + subslice_length),
			   sseu->eu_mask, eu_length))
		return -EFAULT;

	return total_length;
}
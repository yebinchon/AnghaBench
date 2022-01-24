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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct vc4_validated_shader_info {int is_threaded; scalar_t__ uniforms_src_size; int num_texture_samples; int uniforms_size; int num_uniform_addr_offsets; int* uniform_addr_offsets; int /*<<< orphan*/ * texture_samples; } ;
struct vc4_shader_state {int addr; int max_index; } ;
struct vc4_exec_info {int shader_rec_size; int* shader_rec_u; int bo_count; scalar_t__ uniforms_size; int* uniforms_u; void* uniforms_v; int uniforms_p; int /*<<< orphan*/  bin_dep_seqno; struct drm_gem_cma_object** bo; void* shader_rec_v; } ;
struct TYPE_4__ {int size; } ;
struct drm_gem_cma_object {int paddr; TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  write_seqno; struct vc4_validated_shader_info* validated_shader; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int EINVAL ; 
 int VC4_SHADER_FLAG_FS_SINGLE_THREAD ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc4_exec_info*,void*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int,int) ; 
 TYPE_1__* FUNC8 (TYPE_2__*) ; 
 struct drm_gem_cma_object* FUNC9 (struct vc4_exec_info*,int) ; 

__attribute__((used)) static int
FUNC10(struct drm_device *dev,
		       struct vc4_exec_info *exec,
		       struct vc4_shader_state *state)
{
	uint32_t *src_handles;
	void *pkt_u, *pkt_v;
	static const uint32_t shader_reloc_offsets[] = {
		4, /* fs */
		16, /* vs */
		28, /* cs */
	};
	uint32_t shader_reloc_count = FUNC0(shader_reloc_offsets);
	struct drm_gem_cma_object *bo[FUNC0(shader_reloc_offsets) + 8];
	uint32_t nr_attributes, nr_relocs, packet_size;
	int i;

	nr_attributes = state->addr & 0x7;
	if (nr_attributes == 0)
		nr_attributes = 8;
	packet_size = FUNC3(state->addr);

	nr_relocs = FUNC0(shader_reloc_offsets) + nr_attributes;
	if (nr_relocs * 4 > exec->shader_rec_size) {
		FUNC2("overflowed shader recs reading %d handles "
			  "from %d bytes left\n",
			  nr_relocs, exec->shader_rec_size);
		return -EINVAL;
	}
	src_handles = exec->shader_rec_u;
	exec->shader_rec_u += nr_relocs * 4;
	exec->shader_rec_size -= nr_relocs * 4;

	if (packet_size > exec->shader_rec_size) {
		FUNC2("overflowed shader recs copying %db packet "
			  "from %d bytes left\n",
			  packet_size, exec->shader_rec_size);
		return -EINVAL;
	}
	pkt_u = exec->shader_rec_u;
	pkt_v = exec->shader_rec_v;
	FUNC5(pkt_v, pkt_u, packet_size);
	exec->shader_rec_u += packet_size;
	/* Shader recs have to be aligned to 16 bytes (due to the attribute
	 * flags being in the low bytes), so round the next validated shader
	 * rec address up.  This should be safe, since we've got so many
	 * relocations in a shader rec packet.
	 */
	FUNC1(FUNC7(packet_size, 16) - packet_size > nr_relocs * 4);
	exec->shader_rec_v += FUNC7(packet_size, 16);
	exec->shader_rec_size -= packet_size;

	for (i = 0; i < shader_reloc_count; i++) {
		if (src_handles[i] > exec->bo_count) {
			FUNC2("Shader handle %d too big\n", src_handles[i]);
			return -EINVAL;
		}

		bo[i] = exec->bo[src_handles[i]];
		if (!bo[i])
			return -EINVAL;
	}
	for (i = shader_reloc_count; i < nr_relocs; i++) {
		bo[i] = FUNC9(exec, src_handles[i]);
		if (!bo[i])
			return -EINVAL;
	}

	if (((*(uint16_t *)pkt_u & VC4_SHADER_FLAG_FS_SINGLE_THREAD) == 0) !=
	    FUNC8(&bo[0]->base)->validated_shader->is_threaded) {
		FUNC2("Thread mode of CL and FS do not match\n");
		return -EINVAL;
	}

	if (FUNC8(&bo[1]->base)->validated_shader->is_threaded ||
	    FUNC8(&bo[2]->base)->validated_shader->is_threaded) {
		FUNC2("cs and vs cannot be threaded\n");
		return -EINVAL;
	}

	for (i = 0; i < shader_reloc_count; i++) {
		struct vc4_validated_shader_info *validated_shader;
		uint32_t o = shader_reloc_offsets[i];
		uint32_t src_offset = *(uint32_t *)(pkt_u + o);
		uint32_t *texture_handles_u;
		void *uniform_data_u;
		uint32_t tex, uni;

		*(uint32_t *)(pkt_v + o) = bo[i]->paddr + src_offset;

		if (src_offset != 0) {
			FUNC2("Shaders must be at offset 0 of "
				  "the BO.\n");
			return -EINVAL;
		}

		validated_shader = FUNC8(&bo[i]->base)->validated_shader;
		if (!validated_shader)
			return -EINVAL;

		if (validated_shader->uniforms_src_size >
		    exec->uniforms_size) {
			FUNC2("Uniforms src buffer overflow\n");
			return -EINVAL;
		}

		texture_handles_u = exec->uniforms_u;
		uniform_data_u = (texture_handles_u +
				  validated_shader->num_texture_samples);

		FUNC5(exec->uniforms_v, uniform_data_u,
		       validated_shader->uniforms_size);

		for (tex = 0;
		     tex < validated_shader->num_texture_samples;
		     tex++) {
			if (!FUNC6(exec,
				       uniform_data_u,
				       &validated_shader->texture_samples[tex],
				       texture_handles_u[tex],
				       i == 2)) {
				return -EINVAL;
			}
		}

		/* Fill in the uniform slots that need this shader's
		 * start-of-uniforms address (used for resetting the uniform
		 * stream in the presence of control flow).
		 */
		for (uni = 0;
		     uni < validated_shader->num_uniform_addr_offsets;
		     uni++) {
			uint32_t o = validated_shader->uniform_addr_offsets[uni];
			((uint32_t *)exec->uniforms_v)[o] = exec->uniforms_p;
		}

		*(uint32_t *)(pkt_v + o + 4) = exec->uniforms_p;

		exec->uniforms_u += validated_shader->uniforms_src_size;
		exec->uniforms_v += validated_shader->uniforms_size;
		exec->uniforms_p += validated_shader->uniforms_size;
	}

	for (i = 0; i < nr_attributes; i++) {
		struct drm_gem_cma_object *vbo =
			bo[FUNC0(shader_reloc_offsets) + i];
		uint32_t o = 36 + i * 8;
		uint32_t offset = *(uint32_t *)(pkt_u + o + 0);
		uint32_t attr_size = *(uint8_t *)(pkt_u + o + 4) + 1;
		uint32_t stride = *(uint8_t *)(pkt_u + o + 5);
		uint32_t max_index;

		exec->bin_dep_seqno = FUNC4(exec->bin_dep_seqno,
					  FUNC8(&vbo->base)->write_seqno);

		if (state->addr & 0x8)
			stride |= (*(uint32_t *)(pkt_u + 100 + i * 4)) & ~0xff;

		if (vbo->base.size < offset ||
		    vbo->base.size - offset < attr_size) {
			FUNC2("BO offset overflow (%d + %d > %zu)\n",
				  offset, attr_size, vbo->base.size);
			return -EINVAL;
		}

		if (stride != 0) {
			max_index = ((vbo->base.size - offset - attr_size) /
				     stride);
			if (state->max_index > max_index) {
				FUNC2("primitives use index %d out of "
					  "supplied %d\n",
					  state->max_index, max_index);
				return -EINVAL;
			}
		}

		*(uint32_t *)(pkt_v + o) = vbo->paddr + offset;
	}

	return 0;
}
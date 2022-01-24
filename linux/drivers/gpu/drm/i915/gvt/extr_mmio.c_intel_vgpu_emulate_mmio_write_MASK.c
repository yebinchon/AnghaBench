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
typedef  int /*<<< orphan*/  u64 ;
struct intel_vgpu {int /*<<< orphan*/  vgpu_lock; scalar_t__ failsafe; struct intel_gvt* gvt; } ;
struct intel_gvt {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*,int /*<<< orphan*/ ,void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int) ; 
 int FUNC5 (struct intel_vgpu*,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gvt*,unsigned int) ; 
 int FUNC7 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 
 unsigned int FUNC8 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct intel_vgpu*,unsigned int,void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct intel_gvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_gvt*,unsigned int) ; 

int FUNC14(struct intel_vgpu *vgpu, u64 pa,
		void *p_data, unsigned int bytes)
{
	struct intel_gvt *gvt = vgpu->gvt;
	unsigned int offset = 0;
	int ret = -EINVAL;

	if (vgpu->failsafe) {
		FUNC3(vgpu, pa, p_data, bytes, false);
		return 0;
	}

	FUNC10(&vgpu->vgpu_lock);

	offset = FUNC8(vgpu, pa);

	if (FUNC1(bytes > 8))
		goto err;

	if (FUNC12(gvt, offset)) {
		if (FUNC1(!FUNC0(offset, 4) && !FUNC0(offset, 8)))
			goto err;
		if (FUNC1(bytes != 4 && bytes != 8))
			goto err;
		if (FUNC1(!FUNC12(gvt, offset + bytes - 1)))
			goto err;

		ret = FUNC7(vgpu, offset,
				p_data, bytes);
		if (ret)
			goto err;
		goto out;
	}

	if (FUNC2(!FUNC13(gvt, offset))) {
		ret = FUNC5(vgpu, pa, p_data, bytes);
		goto out;
	}

	ret = FUNC9(vgpu, offset, p_data, bytes, false);
	if (ret < 0)
		goto err;

	FUNC6(gvt, offset);
	ret = 0;
	goto out;
err:
	FUNC4("fail to emulate MMIO write %08x len %d\n", offset,
		     bytes);
out:
	FUNC11(&vgpu->vgpu_lock);
	return ret;
}
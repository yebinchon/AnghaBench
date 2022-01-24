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
struct fd {int /*<<< orphan*/  file; } ;
struct amdgpu_fpriv {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_ctx {int dummy; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;

/* Variables and functions */
 int EINVAL ; 
 struct amdgpu_ctx* FUNC0 (struct amdgpu_fpriv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ctx*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct amdgpu_fpriv**) ; 
 struct fd FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fd) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
						  int fd,
						  unsigned ctx_id,
						  enum drm_sched_priority priority)
{
	struct fd f = FUNC4(fd);
	struct amdgpu_fpriv *fpriv;
	struct amdgpu_ctx *ctx;
	int r;

	if (!f.file)
		return -EINVAL;

	r = FUNC3(f.file, &fpriv);
	if (r) {
		FUNC5(f);
		return r;
	}

	ctx = FUNC0(fpriv, ctx_id);

	if (!ctx) {
		FUNC5(f);
		return -EINVAL;
	}

	FUNC1(ctx, priority);
	FUNC2(ctx);
	FUNC5(f);

	return 0;
}
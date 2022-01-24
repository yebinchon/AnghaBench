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
struct vmw_ctx_binding_state {int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long VMW_BINDING_NUM_BITS ; 
#define  VMW_BINDING_PS_BIT 131 
#define  VMW_BINDING_RT_BIT 130 
#define  VMW_BINDING_SO_BIT 129 
#define  VMW_BINDING_VB_BIT 128 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int FUNC3 (struct vmw_ctx_binding_state*) ; 
 int FUNC4 (struct vmw_ctx_binding_state*) ; 
 int FUNC5 (struct vmw_ctx_binding_state*) ; 
 int FUNC6 (struct vmw_ctx_binding_state*) ; 

__attribute__((used)) static int FUNC7(struct vmw_ctx_binding_state *cbs)
{
	int ret = 0;
	unsigned long hit = 0;

	while ((hit = FUNC2(&cbs->dirty, VMW_BINDING_NUM_BITS, hit))
	      < VMW_BINDING_NUM_BITS) {

		switch (hit) {
		case VMW_BINDING_RT_BIT:
			ret = FUNC4(cbs);
			break;
		case VMW_BINDING_PS_BIT:
			ret = FUNC3(cbs);
			break;
		case VMW_BINDING_SO_BIT:
			ret = FUNC5(cbs);
			break;
		case VMW_BINDING_VB_BIT:
			ret = FUNC6(cbs);
			break;
		default:
			FUNC0();
		}
		if (ret)
			return ret;

		FUNC1(hit, &cbs->dirty);
		hit++;
	}

	return 0;
}
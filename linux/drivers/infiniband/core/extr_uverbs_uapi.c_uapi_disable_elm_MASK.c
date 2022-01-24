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
typedef  int /*<<< orphan*/  u32 ;
struct uverbs_api_write_method {int disabled; } ;
struct uverbs_api_object {int disabled; } ;
struct uverbs_api_ioctl_method {int disabled; } ;
struct uverbs_api {int dummy; } ;
struct uapi_definition {scalar_t__ scope; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct uverbs_api_write_method*) ; 
 int FUNC1 (struct uverbs_api_write_method*) ; 
 scalar_t__ UAPI_SCOPE_METHOD ; 
 scalar_t__ UAPI_SCOPE_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct uverbs_api_write_method* FUNC3 (struct uverbs_api*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct uverbs_api *uapi,
			    const struct uapi_definition *def,
			    u32 obj_key,
			    u32 method_key)
{
	bool exists;

	if (def->scope == UAPI_SCOPE_OBJECT) {
		struct uverbs_api_object *obj_elm;

		obj_elm = FUNC3(
			uapi, obj_key, sizeof(*obj_elm), &exists);
		if (FUNC0(obj_elm))
			return FUNC1(obj_elm);
		obj_elm->disabled = 1;
		return 0;
	}

	if (def->scope == UAPI_SCOPE_METHOD &&
	    FUNC4(method_key)) {
		struct uverbs_api_ioctl_method *method_elm;

		method_elm = FUNC3(uapi, method_key,
					      sizeof(*method_elm), &exists);
		if (FUNC0(method_elm))
			return FUNC1(method_elm);
		method_elm->disabled = 1;
		return 0;
	}

	if (def->scope == UAPI_SCOPE_METHOD &&
	    (FUNC6(method_key) ||
	     FUNC5(method_key))) {
		struct uverbs_api_write_method *write_elm;

		write_elm = FUNC3(uapi, method_key,
					     sizeof(*write_elm), &exists);
		if (FUNC0(write_elm))
			return FUNC1(write_elm);
		write_elm->disabled = 1;
		return 0;
	}

	FUNC2(true);
	return -EINVAL;
}
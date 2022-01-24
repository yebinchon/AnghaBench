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
struct alg_spec {char const* alg_string; char* key_string; int key_size; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct alg_spec*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *arg, struct alg_spec *a, char **error, char *error_inval)
{
	char *k;

	FUNC0(a);

	a->alg_string = FUNC3(FUNC4(arg, ':') + 1, GFP_KERNEL);
	if (!a->alg_string)
		goto nomem;

	k = FUNC4(a->alg_string, ':');
	if (k) {
		*k = 0;
		a->key_string = k + 1;
		if (FUNC5(a->key_string) & 1)
			goto inval;

		a->key_size = FUNC5(a->key_string) / 2;
		a->key = FUNC2(a->key_size, GFP_KERNEL);
		if (!a->key)
			goto nomem;
		if (FUNC1(a->key, a->key_string, a->key_size))
			goto inval;
	}

	return 0;
inval:
	*error = error_inval;
	return -EINVAL;
nomem:
	*error = "Out of memory for an argument";
	return -ENOMEM;
}
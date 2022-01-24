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
struct dm_arg_set {int argc; char** argv; } ;
struct cache_args {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cache_args*,struct dm_arg_set*,char**) ; 
 int FUNC1 (struct cache_args*,struct dm_arg_set*,char**) ; 
 int FUNC2 (struct cache_args*,struct dm_arg_set*,char**) ; 
 int FUNC3 (struct cache_args*,struct dm_arg_set*,char**) ; 
 int FUNC4 (struct cache_args*,struct dm_arg_set*,char**) ; 
 int FUNC5 (struct cache_args*,struct dm_arg_set*,char**) ; 

__attribute__((used)) static int FUNC6(struct cache_args *ca, int argc, char **argv,
			    char **error)
{
	int r;
	struct dm_arg_set as;

	as.argc = argc;
	as.argv = argv;

	r = FUNC3(ca, &as, error);
	if (r)
		return r;

	r = FUNC1(ca, &as, error);
	if (r)
		return r;

	r = FUNC4(ca, &as, error);
	if (r)
		return r;

	r = FUNC0(ca, &as, error);
	if (r)
		return r;

	r = FUNC2(ca, &as, error);
	if (r)
		return r;

	r = FUNC5(ca, &as, error);
	if (r)
		return r;

	return 0;
}
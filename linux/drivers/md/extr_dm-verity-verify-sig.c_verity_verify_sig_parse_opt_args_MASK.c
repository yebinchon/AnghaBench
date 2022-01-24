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
struct dm_verity_sig_opts {int dummy; } ;
struct dm_verity {int /*<<< orphan*/  signature_key_desc; struct dm_target* ti; } ;
struct dm_target {void* error; } ;
struct dm_arg_set {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,struct dm_verity_sig_opts*) ; 

int FUNC4(struct dm_arg_set *as,
				     struct dm_verity *v,
				     struct dm_verity_sig_opts *sig_opts,
				     unsigned int *argc,
				     const char *arg_name)
{
	struct dm_target *ti = v->ti;
	int ret = 0;
	const char *sig_key = NULL;

	if (!*argc) {
		ti->error = FUNC0("Signature key not specified");
		return -EINVAL;
	}

	sig_key = FUNC1(as);
	(*argc)--;

	ret = FUNC3(sig_key, sig_opts);
	if (ret < 0)
		ti->error = FUNC0("Invalid key specified");

	v->signature_key_desc = FUNC2(sig_key, GFP_KERNEL);
	if (!v->signature_key_desc)
		return -ENOMEM;

	return ret;
}
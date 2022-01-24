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
struct cros_ec_extcon_info {int /*<<< orphan*/  ec; } ;
struct cros_ec_command {unsigned int version; unsigned int command; unsigned int outsize; unsigned int insize; void* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct cros_ec_extcon_info *info,
			      unsigned int command,
			      unsigned int version,
			      void *outdata,
			      unsigned int outsize,
			      void *indata,
			      unsigned int insize)
{
	struct cros_ec_command *msg;
	int ret;

	msg = FUNC2(sizeof(*msg) + FUNC3(outsize, insize), GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->version = version;
	msg->command = command;
	msg->outsize = outsize;
	msg->insize = insize;

	if (outsize)
		FUNC4(msg->data, outdata, outsize);

	ret = FUNC0(info->ec, msg);
	if (ret >= 0 && insize)
		FUNC4(indata, msg->data, insize);

	FUNC1(msg);
	return ret;
}
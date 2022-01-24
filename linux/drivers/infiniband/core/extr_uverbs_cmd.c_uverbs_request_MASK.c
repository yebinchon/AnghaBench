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
struct TYPE_2__ {size_t inlen; scalar_t__ inbuf; } ;
struct uverbs_attr_bundle {TYPE_1__ ucore; } ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 

__attribute__((used)) static int FUNC4(struct uverbs_attr_bundle *attrs, void *req,
			  size_t req_len)
{
	if (FUNC0(req, attrs->ucore.inbuf,
			   FUNC3(attrs->ucore.inlen, req_len)))
		return -EFAULT;

	if (attrs->ucore.inlen < req_len) {
		FUNC2(req + attrs->ucore.inlen, 0,
		       req_len - attrs->ucore.inlen);
	} else if (attrs->ucore.inlen > req_len) {
		if (!FUNC1(attrs->ucore.inbuf + req_len,
					  attrs->ucore.inlen - req_len))
			return -EOPNOTSUPP;
	}
	return 0;
}
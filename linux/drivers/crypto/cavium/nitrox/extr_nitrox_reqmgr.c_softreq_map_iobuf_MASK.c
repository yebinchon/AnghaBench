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
struct se_crypto_request {int dummy; } ;
struct nitrox_softreq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nitrox_softreq*,struct se_crypto_request*) ; 
 int FUNC1 (struct nitrox_softreq*,struct se_crypto_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_softreq*) ; 

__attribute__((used)) static inline int FUNC3(struct nitrox_softreq *sr,
				    struct se_crypto_request *creq)
{
	int ret;

	ret = FUNC0(sr, creq);
	if (ret)
		return ret;

	ret = FUNC1(sr, creq);
	if (ret)
		FUNC2(sr);

	return ret;
}
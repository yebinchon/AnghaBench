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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mfs; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct chtls_sock* FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, unsigned int size)
{
	struct chtls_sock *csk = FUNC1(sk);

	return FUNC0(size, csk->tlshws.mfs);
}
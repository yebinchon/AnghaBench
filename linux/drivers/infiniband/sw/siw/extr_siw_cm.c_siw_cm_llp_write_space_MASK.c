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
struct sock {int dummy; } ;
struct siw_cep {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct siw_cep*,char*,int /*<<< orphan*/ ) ; 
 struct siw_cep* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk)
{
	struct siw_cep *cep = FUNC1(sk);

	if (cep)
		FUNC0(cep, "state: %d\n", cep->state);
}
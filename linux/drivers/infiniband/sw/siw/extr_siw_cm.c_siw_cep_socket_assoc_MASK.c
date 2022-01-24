#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct siw_cep {struct socket* sock; } ;
struct TYPE_3__ {struct siw_cep* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct siw_cep *cep, struct socket *s)
{
	cep->sock = s;
	FUNC0(cep);
	s->sk->sk_user_data = cep;

	FUNC2(s->sk);
	FUNC1(s->sk);
}
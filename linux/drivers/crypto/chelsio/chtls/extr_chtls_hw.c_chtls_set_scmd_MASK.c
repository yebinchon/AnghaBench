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
struct TYPE_2__ {int seqno_numivs; int ivgen_hdrlen; } ;
struct chtls_hws {TYPE_1__ scmd; } ;
struct chtls_sock {struct chtls_hws tlshws; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct chtls_sock *csk)
{
	struct chtls_hws *hws = &csk->tlshws;

	hws->scmd.seqno_numivs =
		FUNC10(3) |
		FUNC9(0) |
		FUNC3(0) |
		FUNC1(1) |
		FUNC2(2) |
		FUNC0(4) |
		FUNC4(0) |
		FUNC6(4) |
		FUNC8(1);

	hws->scmd.ivgen_hdrlen =
		FUNC5(1) |
		FUNC7(0) |
		FUNC11(1);
}
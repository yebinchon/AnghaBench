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
struct safexcel_token {int /*<<< orphan*/  packet_length; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIP197_TOKEN_OPCODE_NOOP ; 

__attribute__((used)) static inline void FUNC1(struct safexcel_token *token)
{
	token->opcode = EIP197_TOKEN_OPCODE_NOOP;
	token->packet_length = FUNC0(2);
}
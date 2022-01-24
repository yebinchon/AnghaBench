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
struct psmouse_protocol {int dummy; } ;
typedef  enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct psmouse_protocol* FUNC1 (int) ; 
 struct psmouse_protocol const* psmouse_protocols ; 

__attribute__((used)) static const struct psmouse_protocol *FUNC2(enum psmouse_type type)
{
	const struct psmouse_protocol *proto;

	proto = FUNC1(type);
	if (proto)
		return proto;

	FUNC0(1);
	return &psmouse_protocols[0];
}
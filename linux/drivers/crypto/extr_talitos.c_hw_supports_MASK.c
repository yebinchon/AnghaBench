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
struct talitos_private {int desc_types; int exec_units; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, __be32 desc_hdr_template)
{
	struct talitos_private *priv = FUNC3(dev);
	int ret;

	ret = (1 << FUNC0(desc_hdr_template) & priv->desc_types) &&
	      (1 << FUNC1(desc_hdr_template) & priv->exec_units);

	if (FUNC2(desc_hdr_template))
		ret = ret && (1 << FUNC2(desc_hdr_template)
		              & priv->exec_units);

	return ret;
}
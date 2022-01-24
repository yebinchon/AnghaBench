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
struct talitos_ptr {int /*<<< orphan*/  ptr; } ;
struct talitos_private {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct talitos_ptr*,int) ; 
 int FUNC4 (struct talitos_private*) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				     struct talitos_ptr *ptr,
				     enum dma_data_direction dir)
{
	struct talitos_private *priv = FUNC1(dev);
	bool is_sec1 = FUNC4(priv);

	FUNC2(dev, FUNC0(ptr->ptr),
			 FUNC3(ptr, is_sec1), dir);
}
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
struct tda998x_priv {int dummy; } ;

/* Variables and functions */
 int CEC_ENAMODS_EN_CEC ; 
 int CEC_ENAMODS_EN_CEC_CLK ; 
 int /*<<< orphan*/  FUNC0 (struct tda998x_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tda998x_priv*) ; 

__attribute__((used)) static int FUNC2(void *data)
{
	struct tda998x_priv *priv = data;

	FUNC0(priv, CEC_ENAMODS_EN_CEC_CLK | CEC_ENAMODS_EN_CEC, true);
	FUNC1(priv);

	return 0;
}
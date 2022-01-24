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
typedef  int /*<<< orphan*/  u32 ;
struct pca9541 {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pca9541* FUNC0 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_mux_core *muxc, u32 chan)
{
	struct pca9541 *data = FUNC0(muxc);
	struct i2c_client *client = data->client;

	FUNC1(client);
	return 0;
}
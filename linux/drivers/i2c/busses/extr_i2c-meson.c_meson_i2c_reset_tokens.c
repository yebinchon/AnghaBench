
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_i2c {scalar_t__ num_tokens; scalar_t__* tokens; } ;



__attribute__((used)) static void meson_i2c_reset_tokens(struct meson_i2c *i2c)
{
 i2c->tokens[0] = 0;
 i2c->tokens[1] = 0;
 i2c->num_tokens = 0;
}

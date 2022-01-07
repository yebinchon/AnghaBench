
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_i2c {int num_tokens; int* tokens; } ;



__attribute__((used)) static void meson_i2c_add_token(struct meson_i2c *i2c, int token)
{
 if (i2c->num_tokens < 8)
  i2c->tokens[0] |= (token & 0xf) << (i2c->num_tokens * 4);
 else
  i2c->tokens[1] |= (token & 0xf) << ((i2c->num_tokens % 8) * 4);

 i2c->num_tokens++;
}

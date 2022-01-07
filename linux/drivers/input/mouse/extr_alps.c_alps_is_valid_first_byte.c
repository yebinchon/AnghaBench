
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_data {unsigned char mask0; unsigned char byte0; } ;



__attribute__((used)) static bool alps_is_valid_first_byte(struct alps_data *priv,
         unsigned char data)
{
 return (data & priv->mask0) == priv->byte0;
}

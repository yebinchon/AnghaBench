
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int verify; } ;



__attribute__((used)) static bool verify(struct cached_dev *dc)
{
 return dc->verify;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {scalar_t__ real; scalar_t__ decimal; } ;
struct TYPE_7__ {scalar_t__ full; TYPE_1__ partial; } ;
typedef TYPE_2__ fInt ;



__attribute__((used)) static fInt fMultiply (fInt X, fInt Y)
{
 fInt Product;
 int64_t tempProduct;
 bool X_LessThanOne, Y_LessThanOne;

 X_LessThanOne = (X.partial.real == 0 && X.partial.decimal != 0 && X.full >= 0);
 Y_LessThanOne = (Y.partial.real == 0 && Y.partial.decimal != 0 && Y.full >= 0);
 tempProduct = ((int64_t)X.full) * ((int64_t)Y.full);
 tempProduct = tempProduct >> 16;
 Product.full = (int)tempProduct;

 return Product;
}

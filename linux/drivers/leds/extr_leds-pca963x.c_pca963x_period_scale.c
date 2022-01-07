
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pca963x_led {TYPE_2__* chip; } ;
struct TYPE_4__ {TYPE_1__* chipdef; } ;
struct TYPE_3__ {unsigned int scaling; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;

__attribute__((used)) static unsigned int pca963x_period_scale(struct pca963x_led *pca963x,
 unsigned int val)
{
 unsigned int scaling = pca963x->chip->chipdef->scaling;

 return scaling ? DIV_ROUND_CLOSEST(val * scaling, 1000) : val;
}

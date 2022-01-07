
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (int,int) ;

__attribute__((used)) static inline int pad_sg_nents(int sg_nents)
{
 return ALIGN(sg_nents, 4);
}

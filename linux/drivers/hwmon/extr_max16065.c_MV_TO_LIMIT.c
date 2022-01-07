
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;
 int clamp_val (int ,int ,int) ;

__attribute__((used)) static inline int MV_TO_LIMIT(int mv, int range)
{
 return clamp_val(DIV_ROUND_CLOSEST(mv * 256, range), 0, 255);
}

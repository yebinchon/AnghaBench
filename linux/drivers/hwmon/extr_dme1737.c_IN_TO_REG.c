
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (long,int) ;
 long clamp_val (long,int ,int) ;

__attribute__((used)) static inline int IN_TO_REG(long val, int nominal)
{
 val = clamp_val(val, 0, 255 * nominal / 192);
 return DIV_ROUND_CLOSEST(val * 192, nominal);
}

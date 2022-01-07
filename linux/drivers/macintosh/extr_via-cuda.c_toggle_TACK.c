
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t B ;
 int TACK ;
 int in_8 (int *) ;
 int out_8 (int *,int) ;
 int * via ;

__attribute__((used)) static inline void toggle_TACK(void)
{
 out_8(&via[B], in_8(&via[B]) ^ TACK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACR ;
 size_t B ;
 size_t SR ;
 int SR_EXT ;
 int SR_OUT ;
 int TREQ ;
 int in_8 (int *) ;
 int out_8 (int *,int) ;
 int * via1 ;
 int * via2 ;

__attribute__((used)) static inline void
send_byte(int x)
{
 out_8(&via1[ACR], in_8(&via1[ACR]) | SR_OUT | SR_EXT);
 out_8(&via1[SR], x);
 out_8(&via2[B], in_8(&via2[B]) & ~TREQ);
 (void)in_8(&via2[B]);
}

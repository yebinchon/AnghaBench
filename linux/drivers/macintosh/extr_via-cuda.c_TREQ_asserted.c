
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TREQ ;

__attribute__((used)) static inline bool TREQ_asserted(u8 portb)
{
 return !(portb & TREQ);
}

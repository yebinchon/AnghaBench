
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCKDEP_STILL_OK ;
 int add_taint (unsigned int,int ) ;

__attribute__((used)) static inline void add_taint_for_CI(unsigned int taint)
{






 add_taint(taint, LOCKDEP_STILL_OK);
}

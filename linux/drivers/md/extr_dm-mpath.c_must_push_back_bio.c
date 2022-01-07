
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int flags; } ;


 unsigned long READ_ONCE (int ) ;
 int __must_push_back (struct multipath*,unsigned long) ;

__attribute__((used)) static bool must_push_back_bio(struct multipath *m)
{
 unsigned long flags = READ_ONCE(m->flags);
 return __must_push_back(m, flags);
}

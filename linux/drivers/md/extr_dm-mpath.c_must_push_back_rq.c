
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int flags; } ;


 int MPATHF_QUEUE_IF_NO_PATH ;
 unsigned long READ_ONCE (int ) ;
 scalar_t__ __must_push_back (struct multipath*,unsigned long) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static bool must_push_back_rq(struct multipath *m)
{
 unsigned long flags = READ_ONCE(m->flags);
 return test_bit(MPATHF_QUEUE_IF_NO_PATH, &flags) || __must_push_back(m, flags);
}

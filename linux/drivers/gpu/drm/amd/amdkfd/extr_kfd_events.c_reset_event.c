
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_event {int signaled; } ;



__attribute__((used)) static void reset_event(struct kfd_event *ev)
{
 ev->signaled = 0;
}

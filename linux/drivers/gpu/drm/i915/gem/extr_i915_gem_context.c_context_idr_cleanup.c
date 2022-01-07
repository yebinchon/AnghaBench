
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context_close (void*) ;

__attribute__((used)) static int context_idr_cleanup(int id, void *p, void *data)
{
 context_close(p);
 return 0;
}

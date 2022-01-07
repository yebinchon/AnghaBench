
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilynx {int kref; } ;


 int kref_put (int *,int ) ;
 int lynx_release ;

__attribute__((used)) static inline void
lynx_put(struct pcilynx *lynx)
{
 kref_put(&lynx->kref, lynx_release);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilynx {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct pcilynx *
lynx_get(struct pcilynx *lynx)
{
 kref_get(&lynx->kref);

 return lynx;
}

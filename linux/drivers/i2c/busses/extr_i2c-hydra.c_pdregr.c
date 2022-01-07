
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Hydra {int CachePD; } ;


 int readl (int *) ;

__attribute__((used)) static inline u32 pdregr(void *data)
{
 struct Hydra *hydra = (struct Hydra *)data;
 return readl(&hydra->CachePD);
}

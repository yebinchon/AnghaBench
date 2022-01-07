
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_chan {int ddev; } ;


 int __is_dmac64 (int ) ;

__attribute__((used)) static inline bool is_dmac64(const struct txx9dmac_chan *dc)
{
 return __is_dmac64(dc->ddev);
}

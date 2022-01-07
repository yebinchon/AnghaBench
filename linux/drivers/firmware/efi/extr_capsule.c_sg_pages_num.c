
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int SGLIST_PER_PAGE ;

__attribute__((used)) static inline unsigned int sg_pages_num(unsigned int count)
{
 return DIV_ROUND_UP(count, SGLIST_PER_PAGE);
}

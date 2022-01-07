
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int IE31200_ECCERRLOG_RANK_BITS ;
 int IE31200_ECCERRLOG_RANK_SHIFT ;

__attribute__((used)) static int eccerrlog_row(u64 log)
{
 return ((log & IE31200_ECCERRLOG_RANK_BITS) >>
    IE31200_ECCERRLOG_RANK_SHIFT);
}

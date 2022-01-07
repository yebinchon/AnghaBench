
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_wss {scalar_t__ threshold; int total_count; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool wss_exceeds_threshold(struct rvt_wss *wss)
{
 return atomic_read(&wss->total_count) >= wss->threshold;
}

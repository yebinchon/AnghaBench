
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NVM_MAX_VLBA ;
 int get_count_order (unsigned int) ;
 int max (int,int) ;

__attribute__((used)) static unsigned int pblk_rb_calculate_size(unsigned int nr_entries,
        unsigned int threshold)
{
 unsigned int thr_sz = 1 << (get_count_order(threshold + NVM_MAX_VLBA));
 unsigned int max_sz = max(thr_sz, nr_entries);
 unsigned int max_io;





 max_io = (1 << max((int)(get_count_order(max_sz)),
    (int)(get_count_order(NVM_MAX_VLBA << 1))));
 if ((threshold + NVM_MAX_VLBA) >= max_io)
  max_io <<= 1;

 return max_io;
}

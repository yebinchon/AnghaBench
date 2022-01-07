
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;


 int ERANGE ;
 int REG_SAMPLE_TIME ;
 int do_div (unsigned long long,int) ;
 int isl29501_register_write (struct isl29501_private*,int ,unsigned long long) ;

__attribute__((used)) static int isl29501_set_freq(struct isl29501_private *isl29501,
        int val, int val2)
{
 int freq;
 unsigned long long sample_time;


 freq = val * 1000000 + val2 % 1000000;
 sample_time = 2222ULL * 1000000ULL;
 do_div(sample_time, freq);

 sample_time -= 1;

 if (sample_time > 255)
  return -ERANGE;

 return isl29501_register_write(isl29501, REG_SAMPLE_TIME, sample_time);
}

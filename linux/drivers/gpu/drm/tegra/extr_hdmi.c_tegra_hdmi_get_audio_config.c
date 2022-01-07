
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tegra_hdmi_audio_config {int n; int cts; int aval; } ;
typedef int int64_t ;


 int BIT (int) ;
 int EINVAL ;
 void* abs (int) ;
 int do_div (int,unsigned int const) ;
 int memset (struct tegra_hdmi_audio_config*,int ,int) ;

__attribute__((used)) static int
tegra_hdmi_get_audio_config(unsigned int audio_freq, unsigned int pix_clock,
       struct tegra_hdmi_audio_config *config)
{
 const unsigned int afreq = 128 * audio_freq;
 const unsigned int min_n = afreq / 1500;
 const unsigned int max_n = afreq / 300;
 const unsigned int ideal_n = afreq / 1000;
 int64_t min_err = (uint64_t)-1 >> 1;
 unsigned int min_delta = -1;
 int n;

 memset(config, 0, sizeof(*config));
 config->n = -1;

 for (n = min_n; n <= max_n; n++) {
  uint64_t cts_f, aval_f;
  unsigned int delta;
  int64_t cts, err;


  aval_f = ((int64_t)24000000 << 16) * n;
  do_div(aval_f, afreq);

  if (aval_f & 0xFFFF)
   continue;


  cts_f = ((int64_t)pix_clock << 16) * n;
  do_div(cts_f, afreq);

  cts = (cts_f & ~0xFFFF) + ((cts_f & BIT(15)) << 1);

  delta = abs(n - ideal_n);


  err = abs((int64_t)cts_f - cts);
  if (err < min_err || (err == min_err && delta < min_delta)) {
   config->n = n;
   config->cts = cts >> 16;
   config->aval = aval_f >> 16;
   min_delta = delta;
   min_err = err;
  }
 }

 return config->n != -1 ? 0 : -EINVAL;
}

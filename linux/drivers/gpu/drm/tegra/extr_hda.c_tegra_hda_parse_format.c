
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hda_format {int pcm; int sample_rate; int bits; unsigned int channels; } ;


 unsigned int AC_FMT_BASE_44K ;





 unsigned int AC_FMT_BITS_MASK ;
 unsigned int AC_FMT_BITS_SHIFT ;
 unsigned int AC_FMT_CHAN_MASK ;
 unsigned int AC_FMT_CHAN_SHIFT ;
 unsigned int AC_FMT_DIV_MASK ;
 unsigned int AC_FMT_DIV_SHIFT ;
 unsigned int AC_FMT_MULT_MASK ;
 unsigned int AC_FMT_MULT_SHIFT ;
 unsigned int AC_FMT_TYPE_NON_PCM ;
 int WARN (int,char*,unsigned int) ;

void tegra_hda_parse_format(unsigned int format, struct tegra_hda_format *fmt)
{
 unsigned int mul, div, bits, channels;

 if (format & AC_FMT_TYPE_NON_PCM)
  fmt->pcm = 0;
 else
  fmt->pcm = 1;

 if (format & AC_FMT_BASE_44K)
  fmt->sample_rate = 44100;
 else
  fmt->sample_rate = 48000;

 mul = (format & AC_FMT_MULT_MASK) >> AC_FMT_MULT_SHIFT;
 div = (format & AC_FMT_DIV_MASK) >> AC_FMT_DIV_SHIFT;

 fmt->sample_rate *= (mul + 1) / (div + 1);

 switch (format & AC_FMT_BITS_MASK) {
 case 128:
  fmt->bits = 8;
  break;

 case 132:
  fmt->bits = 16;
  break;

 case 131:
  fmt->bits = 20;
  break;

 case 130:
  fmt->bits = 24;
  break;

 case 129:
  fmt->bits = 32;
  break;

 default:
  bits = (format & AC_FMT_BITS_MASK) >> AC_FMT_BITS_SHIFT;
  WARN(1, "invalid number of bits: %#x\n", bits);
  fmt->bits = 8;
  break;
 }

 channels = (format & AC_FMT_CHAN_MASK) >> AC_FMT_CHAN_SHIFT;


 fmt->channels = channels + 1;
}

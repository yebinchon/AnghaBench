
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int ARRAY_SIZE (int ) ;
 int INTEL_PIPE_CRC_SOURCE_NONE ;
 int match_string (int ,int ,char const*) ;
 int pipe_crc_sources ;

__attribute__((used)) static int
display_crc_ctl_parse_source(const char *buf, enum intel_pipe_crc_source *s)
{
 int i;

 if (!buf) {
  *s = INTEL_PIPE_CRC_SOURCE_NONE;
  return 0;
 }

 i = match_string(pipe_crc_sources, ARRAY_SIZE(pipe_crc_sources), buf);
 if (i < 0)
  return i;

 *s = i;
 return 0;
}

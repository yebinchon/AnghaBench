
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_output_format { ____Placeholder_intel_output_format } intel_output_format ;


 int ARRAY_SIZE (char const**) ;
 int INTEL_OUTPUT_FORMAT_INVALID ;
 char const** output_format_str ;

__attribute__((used)) static const char *output_formats(enum intel_output_format format)
{
 if (format >= ARRAY_SIZE(output_format_str))
  format = INTEL_OUTPUT_FORMAT_INVALID;
 return output_format_str[format];
}

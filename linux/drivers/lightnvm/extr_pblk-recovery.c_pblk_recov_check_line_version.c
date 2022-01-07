
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;
struct line_header {scalar_t__ version_major; scalar_t__ version_minor; } ;
struct line_emeta {struct line_header header; } ;


 scalar_t__ EMETA_VERSION_MAJOR ;
 scalar_t__ EMETA_VERSION_MINOR ;
 int pblk_err (struct pblk*,char*,scalar_t__,scalar_t__) ;
 int pblk_info (struct pblk*,char*,scalar_t__) ;

__attribute__((used)) static int pblk_recov_check_line_version(struct pblk *pblk,
      struct line_emeta *emeta)
{
 struct line_header *header = &emeta->header;

 if (header->version_major != EMETA_VERSION_MAJOR) {
  pblk_err(pblk, "line major version mismatch: %d, expected: %d\n",
    header->version_major, EMETA_VERSION_MAJOR);
  return 1;
 }







 return 0;
}

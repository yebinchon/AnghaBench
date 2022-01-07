
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ feature_index; scalar_t__ funcindex_clientid; } ;
struct hidpp_report {TYPE_1__ fap; } ;



__attribute__((used)) static inline bool hidpp_match_answer(struct hidpp_report *question,
  struct hidpp_report *answer)
{
 return (answer->fap.feature_index == question->fap.feature_index) &&
    (answer->fap.funcindex_clientid == question->fap.funcindex_clientid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum promote_result { ____Placeholder_promote_result } promote_result ;


 int PROMOTE_NOT ;
 int PROMOTE_PERMANENT ;

__attribute__((used)) static enum promote_result maybe_promote(bool promote)
{
 return promote ? PROMOTE_PERMANENT : PROMOTE_NOT;
}

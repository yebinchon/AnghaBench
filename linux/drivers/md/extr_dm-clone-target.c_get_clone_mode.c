
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int mode; } ;
typedef enum clone_metadata_mode { ____Placeholder_clone_metadata_mode } clone_metadata_mode ;


 int READ_ONCE (int ) ;

__attribute__((used)) static enum clone_metadata_mode get_clone_mode(struct clone *clone)
{
 return READ_ONCE(clone->mode);
}

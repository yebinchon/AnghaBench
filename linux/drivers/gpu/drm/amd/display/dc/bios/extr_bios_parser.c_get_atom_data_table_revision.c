
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct atom_data_revision {void* minor; void* major; } ;
typedef int ATOM_COMMON_TABLE_HEADER ;


 scalar_t__ GET_DATA_TABLE_MAJOR_REVISION (int *) ;
 scalar_t__ GET_DATA_TABLE_MINOR_REVISION (int *) ;

__attribute__((used)) static void get_atom_data_table_revision(
 ATOM_COMMON_TABLE_HEADER *atom_data_tbl,
 struct atom_data_revision *tbl_revision)
{
 if (!tbl_revision)
  return;


 tbl_revision->major = 0;
 tbl_revision->minor = 0;

 if (!atom_data_tbl)
  return;

 tbl_revision->major =
   (uint32_t) GET_DATA_TABLE_MAJOR_REVISION(atom_data_tbl);
 tbl_revision->minor =
   (uint32_t) GET_DATA_TABLE_MINOR_REVISION(atom_data_tbl);
}

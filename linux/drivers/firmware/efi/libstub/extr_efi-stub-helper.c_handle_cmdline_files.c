
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef long u64 ;
struct file_info {unsigned long size; int handle; } ;
typedef int filename_16 ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_loaded_image_t ;
typedef int efi_file_handle_t ;
typedef char efi_char16_t ;


 int CONFIG_X86 ;
 scalar_t__ EFI_INVALID_PARAMETER ;
 int EFI_LOADER_DATA ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long __chunk_size ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,struct file_info*,...) ;
 int efi_file_close (int ) ;
 scalar_t__ efi_file_read (int ,unsigned long*,void*) ;
 scalar_t__ efi_file_size (int *,int *,char*,void**,unsigned long*) ;
 int efi_free (int *,long,unsigned long) ;
 scalar_t__ efi_high_alloc (int *,long,int,unsigned long*,unsigned long) ;
 scalar_t__ efi_open_volume (int *,int *,int **) ;
 int free_pool ;
 int pr_efi_err (int *,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

efi_status_t handle_cmdline_files(efi_system_table_t *sys_table_arg,
      efi_loaded_image_t *image,
      char *cmd_line, char *option_string,
      unsigned long max_addr,
      unsigned long *load_addr,
      unsigned long *load_size)
{
 struct file_info *files;
 unsigned long file_addr;
 u64 file_size_total;
 efi_file_handle_t *fh = ((void*)0);
 efi_status_t status;
 int nr_files;
 char *str;
 int i, j, k;

 file_addr = 0;
 file_size_total = 0;

 str = cmd_line;

 j = 0;

 if (!load_addr || !load_size)
  return EFI_INVALID_PARAMETER;

 *load_addr = 0;
 *load_size = 0;

 if (!str || !*str)
  return EFI_SUCCESS;

 for (nr_files = 0; *str; nr_files++) {
  str = strstr(str, option_string);
  if (!str)
   break;

  str += strlen(option_string);


  while (*str == '/' || *str == '\\')
   str++;

  while (*str && *str != ' ' && *str != '\n')
   str++;
 }

 if (!nr_files)
  return EFI_SUCCESS;

 status = efi_call_early(allocate_pool, EFI_LOADER_DATA,
    nr_files * sizeof(*files), (void **)&files);
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table_arg, "Failed to alloc mem for file handle list\n");
  goto fail;
 }

 str = cmd_line;
 for (i = 0; i < nr_files; i++) {
  struct file_info *file;
  efi_char16_t filename_16[256];
  efi_char16_t *p;

  str = strstr(str, option_string);
  if (!str)
   break;

  str += strlen(option_string);

  file = &files[i];
  p = filename_16;


  while (*str == '/' || *str == '\\')
   str++;

  while (*str && *str != ' ' && *str != '\n') {
   if ((u8 *)p >= (u8 *)filename_16 + sizeof(filename_16))
    break;

   if (*str == '/') {
    *p++ = '\\';
    str++;
   } else {
    *p++ = *str++;
   }
  }

  *p = '\0';


  if (!i) {
   status = efi_open_volume(sys_table_arg, image, &fh);
   if (status != EFI_SUCCESS)
    goto free_files;
  }

  status = efi_file_size(sys_table_arg, fh, filename_16,
           (void **)&file->handle, &file->size);
  if (status != EFI_SUCCESS)
   goto close_handles;

  file_size_total += file->size;
 }

 if (file_size_total) {
  unsigned long addr;






  status = efi_high_alloc(sys_table_arg, file_size_total, 0x1000,
        &file_addr, max_addr);
  if (status != EFI_SUCCESS) {
   pr_efi_err(sys_table_arg, "Failed to alloc highmem for files\n");
   goto close_handles;
  }


  if (file_addr > max_addr) {
   pr_efi_err(sys_table_arg, "We've run out of free low memory\n");
   status = EFI_INVALID_PARAMETER;
   goto free_file_total;
  }

  addr = file_addr;
  for (j = 0; j < nr_files; j++) {
   unsigned long size;

   size = files[j].size;
   while (size) {
    unsigned long chunksize;

    if (IS_ENABLED(CONFIG_X86) && size > __chunk_size)
     chunksize = __chunk_size;
    else
     chunksize = size;

    status = efi_file_read(files[j].handle,
             &chunksize,
             (void *)addr);
    if (status != EFI_SUCCESS) {
     pr_efi_err(sys_table_arg, "Failed to read file\n");
     goto free_file_total;
    }
    addr += chunksize;
    size -= chunksize;
   }

   efi_file_close(files[j].handle);
  }

 }

 efi_call_early(free_pool, files);

 *load_addr = file_addr;
 *load_size = file_size_total;

 return status;

free_file_total:
 efi_free(sys_table_arg, file_size_total, file_addr);

close_handles:
 for (k = j; k < i; k++)
  efi_file_close(files[k].handle);
free_files:
 efi_call_early(free_pool, files);
fail:
 *load_addr = 0;
 *load_size = 0;

 return status;
}

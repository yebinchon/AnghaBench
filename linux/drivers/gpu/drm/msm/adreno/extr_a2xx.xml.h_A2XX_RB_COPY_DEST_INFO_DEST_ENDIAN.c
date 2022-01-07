
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_surface_endian { ____Placeholder_adreno_rb_surface_endian } adreno_rb_surface_endian ;


 int A2XX_RB_COPY_DEST_INFO_DEST_ENDIAN__MASK ;
 int A2XX_RB_COPY_DEST_INFO_DEST_ENDIAN__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_COPY_DEST_INFO_DEST_ENDIAN(enum adreno_rb_surface_endian val)
{
 return ((val) << A2XX_RB_COPY_DEST_INFO_DEST_ENDIAN__SHIFT) & A2XX_RB_COPY_DEST_INFO_DEST_ENDIAN__MASK;
}

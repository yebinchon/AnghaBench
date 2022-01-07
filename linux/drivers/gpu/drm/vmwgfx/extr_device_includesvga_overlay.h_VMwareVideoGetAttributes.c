
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int SVGAOverlayFormat ;






__attribute__((used)) static inline bool
VMwareVideoGetAttributes(const SVGAOverlayFormat format,
                         uint32 *width,
                         uint32 *height,
                         uint32 *size,
                         uint32 *pitches,
                         uint32 *offsets)
{
    int tmp;

    *width = (*width + 1) & ~1;

    if (offsets) {
        offsets[0] = 0;
    }

    switch (format) {
    case 128:
       *height = (*height + 1) & ~1;
       *size = (*width) * (*height);

       if (pitches) {
          pitches[0] = *width;
       }

       if (offsets) {
          offsets[1] = *size;
       }

       tmp = *width >> 1;

       if (pitches) {
          pitches[1] = pitches[2] = tmp;
       }

       tmp *= (*height >> 1);
       *size += tmp;

       if (offsets) {
          offsets[2] = *size;
       }

       *size += tmp;
       break;

    case 129:
    case 130:
       *size = *width * 2;

       if (pitches) {
          pitches[0] = *size;
       }

       *size *= *height;
       break;

    default:
       return 0;
    }

    return 1;
}

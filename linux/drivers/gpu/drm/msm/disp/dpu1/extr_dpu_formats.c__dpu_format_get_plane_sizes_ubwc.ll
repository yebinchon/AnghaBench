; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_get_plane_sizes_ubwc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_get_plane_sizes_ubwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_format = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dpu_hw_fmt_layout = type { i32, i32, i32, i32*, i8**, i32, %struct.dpu_format* }

@.str = private unnamed_addr constant [42 x i8] c"UBWC format not supported for fmt: %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPU_UBWC_PLANE_SIZE_ALIGNMENT = common dso_local global i32 0, align 4
@DPU_MAX_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_format*, i32, i32, %struct.dpu_hw_fmt_layout*)* @_dpu_format_get_plane_sizes_ubwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_format_get_plane_sizes_ubwc(%struct.dpu_format* %0, i32 %1, i32 %2, %struct.dpu_hw_fmt_layout* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpu_hw_fmt_layout*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dpu_format* %0, %struct.dpu_format** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpu_hw_fmt_layout* %3, %struct.dpu_hw_fmt_layout** %9, align 8
  %19 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %20 = call i32 @DPU_FORMAT_IS_UBWC(%struct.dpu_format* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %22 = call i32 @memset(%struct.dpu_hw_fmt_layout* %21, i32 0, i32 48)
  %23 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %24 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %24, i32 0, i32 6
  store %struct.dpu_format* %23, %struct.dpu_format** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %33 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %38 = call i32 @_dpu_format_get_media_color_ubwc(%struct.dpu_format* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %43 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to i8*
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %239

49:                                               ; preds = %4
  %50 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %50, i32 0, i32 6
  %52 = load %struct.dpu_format*, %struct.dpu_format** %51, align 8
  %53 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %158

55:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %56 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %57 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %56, i32 0, i32 2
  store i32 2, i32* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @VENUS_Y_STRIDE(i32 %58, i32 %59)
  %61 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @VENUS_Y_SCANLINES(i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %69 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %76 = call i8* @MSM_MEDIA_ALIGN(i32 %74, i32 %75)
  %77 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %78 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %77, i32 0, i32 4
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @VENUS_UV_STRIDE(i32 %81, i32 %82)
  %84 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %85 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @VENUS_UV_SCANLINES(i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %92 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %99 = call i8* @MSM_MEDIA_ALIGN(i32 %97, i32 %98)
  %100 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %101 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %55
  br label %216

107:                                              ; preds = %55
  %108 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %109 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @VENUS_Y_META_STRIDE(i32 %112, i32 %113)
  %115 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %116 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @VENUS_Y_META_SCANLINES(i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %123 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %130 = call i8* @MSM_MEDIA_ALIGN(i32 %128, i32 %129)
  %131 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %132 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %131, i32 0, i32 4
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 2
  store i8* %130, i8** %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @VENUS_UV_META_STRIDE(i32 %135, i32 %136)
  %138 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %139 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @VENUS_UV_META_SCANLINES(i32 %142, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %146 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %153 = call i8* @MSM_MEDIA_ALIGN(i32 %151, i32 %152)
  %154 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %155 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %154, i32 0, i32 4
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 3
  store i8* %153, i8** %157, align 8
  br label %215

158:                                              ; preds = %49
  %159 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %160 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @VENUS_RGB_STRIDE(i32 %161, i32 %162)
  %164 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %165 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @VENUS_RGB_SCANLINES(i32 %168, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %172 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %17, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %179 = call i8* @MSM_MEDIA_ALIGN(i32 %177, i32 %178)
  %180 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %181 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %180, i32 0, i32 4
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  store i8* %179, i8** %183, align 8
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %158
  br label %216

187:                                              ; preds = %158
  %188 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %189 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @VENUS_RGB_META_STRIDE(i32 %192, i32 %193)
  %195 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %196 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @VENUS_RGB_META_SCANLINES(i32 %199, i32 %200)
  store i32 %201, i32* %18, align 4
  %202 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %203 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %18, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, i32* @DPU_UBWC_PLANE_SIZE_ALIGNMENT, align 4
  %210 = call i8* @MSM_MEDIA_ALIGN(i32 %208, i32 %209)
  %211 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %212 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %211, i32 0, i32 4
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 2
  store i8* %210, i8** %214, align 8
  br label %215

215:                                              ; preds = %187, %107
  br label %216

216:                                              ; preds = %215, %186, %106
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %235, %216
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @DPU_MAX_PLANES, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %223 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %222, i32 0, i32 4
  %224 = load i8**, i8*** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %9, align 8
  %230 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = getelementptr i8, i8* %228, i64 %232
  %234 = ptrtoint i8* %233 to i32
  store i32 %234, i32* %230, align 8
  br label %235

235:                                              ; preds = %221
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %217

238:                                              ; preds = %217
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %41
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @DPU_FORMAT_IS_UBWC(%struct.dpu_format*) #1

declare dso_local i32 @memset(%struct.dpu_hw_fmt_layout*, i32, i32) #1

declare dso_local i32 @_dpu_format_get_media_color_ubwc(%struct.dpu_format*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

declare dso_local i32 @VENUS_Y_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_Y_SCANLINES(i32, i32) #1

declare dso_local i8* @MSM_MEDIA_ALIGN(i32, i32) #1

declare dso_local i32 @VENUS_UV_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_UV_SCANLINES(i32, i32) #1

declare dso_local i32 @VENUS_Y_META_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_Y_META_SCANLINES(i32, i32) #1

declare dso_local i32 @VENUS_UV_META_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_UV_META_SCANLINES(i32, i32) #1

declare dso_local i32 @VENUS_RGB_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_RGB_SCANLINES(i32, i32) #1

declare dso_local i32 @VENUS_RGB_META_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_RGB_META_SCANLINES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

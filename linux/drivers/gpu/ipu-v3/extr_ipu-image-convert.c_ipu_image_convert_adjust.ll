; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.ipu_image_pixfmt = type { i32, i64 }

@V4L2_PIX_FMT_RGB24 = common dso_local global i8* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@__u32 = common dso_local global i32 0, align 4
@IMAGE_CONVERT_IN = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@IMAGE_CONVERT_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_image_convert_adjust(%struct.ipu_image* %0, %struct.ipu_image* %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_image*, align 8
  %5 = alloca %struct.ipu_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_image_pixfmt*, align 8
  %8 = alloca %struct.ipu_image_pixfmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipu_image* %0, %struct.ipu_image** %4, align 8
  store %struct.ipu_image* %1, %struct.ipu_image** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %14 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call %struct.ipu_image_pixfmt* @get_format(i8* %16)
  store %struct.ipu_image_pixfmt* %17, %struct.ipu_image_pixfmt** %7, align 8
  %18 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %19 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.ipu_image_pixfmt* @get_format(i8* %21)
  store %struct.ipu_image_pixfmt* %22, %struct.ipu_image_pixfmt** %8, align 8
  %23 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %24 = icmp ne %struct.ipu_image_pixfmt* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** @V4L2_PIX_FMT_RGB24, align 8
  %27 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %28 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** @V4L2_PIX_FMT_RGB24, align 8
  %31 = call %struct.ipu_image_pixfmt* @get_format(i8* %30)
  store %struct.ipu_image_pixfmt* %31, %struct.ipu_image_pixfmt** %7, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %34 = icmp ne %struct.ipu_image_pixfmt* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @V4L2_PIX_FMT_RGB24, align 8
  %37 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %38 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @V4L2_PIX_FMT_RGB24, align 8
  %41 = call %struct.ipu_image_pixfmt* @get_format(i8* %40)
  store %struct.ipu_image_pixfmt* %41, %struct.ipu_image_pixfmt** %8, align 8
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %44 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %45 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %48 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %43, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ipu_rot_mode_is_irt(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %42
  %54 = load i32, i32* @__u32, align 4
  %55 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %56 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %60 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 4
  %64 = call i8* @max_t(i32 %54, i32 %58, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %67 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @__u32, align 4
  %70 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %71 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %75 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 4
  %79 = call i8* @max_t(i32 %69, i32 %73, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %82 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  br label %115

84:                                               ; preds = %42
  %85 = load i32, i32* @__u32, align 4
  %86 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %87 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %91 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 4
  %95 = call i8* @max_t(i32 %85, i32 %89, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %98 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @__u32, align 4
  %101 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %102 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %106 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %108, 4
  %110 = call i8* @max_t(i32 %100, i32 %104, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %113 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %84, %53
  %116 = load i32, i32* @IMAGE_CONVERT_IN, align 4
  %117 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @tile_width_align(i32 %116, %struct.ipu_image_pixfmt* %117, i32 %118)
  %120 = call i32 @ilog2(i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* @IMAGE_CONVERT_IN, align 4
  %122 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @tile_height_align(i32 %121, %struct.ipu_image_pixfmt* %122, i32 %123)
  %125 = call i32 @ilog2(i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %127 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MIN_W, align 4
  %131 = load i32, i32* @MAX_W, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i8* @clamp_align(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %136 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %139 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MIN_H, align 4
  %143 = load i32, i32* @MAX_H, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i8* @clamp_align(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %148 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @IMAGE_CONVERT_OUT, align 4
  %151 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @tile_width_align(i32 %150, %struct.ipu_image_pixfmt* %151, i32 %152)
  %154 = call i32 @ilog2(i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* @IMAGE_CONVERT_OUT, align 4
  %156 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @tile_height_align(i32 %155, %struct.ipu_image_pixfmt* %156, i32 %157)
  %159 = call i32 @ilog2(i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %161 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MIN_W, align 4
  %165 = load i32, i32* @MAX_W, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i8* @clamp_align(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %170 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 4
  %172 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %173 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MIN_H, align 4
  %177 = load i32, i32* @MAX_H, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i8* @clamp_align(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %182 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %185 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %115
  %189 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %190 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %11, align 4
  %194 = shl i32 2, %193
  %195 = load i32, i32* @MAX_W, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i8* @clamp_align(i32 %192, i32 %194, i32 %195, i32 %196)
  br label %223

198:                                              ; preds = %115
  %199 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %200 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %204 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = ashr i32 %206, 3
  %208 = load i32, i32* %11, align 4
  %209 = shl i32 2, %208
  %210 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %211 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %209, %212
  %214 = ashr i32 %213, 3
  %215 = load i32, i32* @MAX_W, align 4
  %216 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %217 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = ashr i32 %219, 3
  %221 = load i32, i32* %11, align 4
  %222 = call i8* @clamp_align(i32 %207, i32 %214, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %198, %188
  %224 = phi i8* [ %197, %188 ], [ %222, %198 ]
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %227 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 8
  %229 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %230 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %223
  %234 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %235 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %239 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %237, %241
  %243 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %7, align 8
  %244 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = mul nsw i32 %242, %245
  %247 = ashr i32 %246, 3
  br label %258

248:                                              ; preds = %223
  %249 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %250 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %254 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = mul nsw i32 %252, %256
  br label %258

258:                                              ; preds = %248, %233
  %259 = phi i32 [ %247, %233 ], [ %257, %248 ]
  %260 = load %struct.ipu_image*, %struct.ipu_image** %4, align 8
  %261 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 4
  store i32 %259, i32* %262, align 4
  %263 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %264 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %258
  %268 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %269 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  br label %282

272:                                              ; preds = %258
  %273 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %274 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %278 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 %276, %279
  %281 = ashr i32 %280, 3
  br label %282

282:                                              ; preds = %272, %267
  %283 = phi i32 [ %271, %267 ], [ %281, %272 ]
  %284 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %285 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 3
  store i32 %283, i32* %286, align 8
  %287 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %288 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %282
  %292 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %293 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %297 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = mul nsw i32 %295, %299
  %301 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %302 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %300, %303
  %305 = ashr i32 %304, 3
  br label %316

306:                                              ; preds = %282
  %307 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %308 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %312 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = mul nsw i32 %310, %314
  br label %316

316:                                              ; preds = %306, %291
  %317 = phi i32 [ %305, %291 ], [ %315, %306 ]
  %318 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %319 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 4
  store i32 %317, i32* %320, align 4
  ret void
}

declare dso_local %struct.ipu_image_pixfmt* @get_format(i8*) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i8* @max_t(i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @tile_width_align(i32, %struct.ipu_image_pixfmt*, i32) #1

declare dso_local i32 @tile_height_align(i32, %struct.ipu_image_pixfmt*, i32) #1

declare dso_local i8* @clamp_align(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

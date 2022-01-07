; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sti_compositor = type { i32*, i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sti_compositor_subdev_descriptor* }
%struct.sti_compositor_subdev_descriptor = type { i32, i64, i32 }
%struct.drm_device = type { i32, %struct.sti_private* }
%struct.sti_private = type { %struct.sti_compositor* }
%struct.drm_plane = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unknown subdev component type\0A\00", align 1
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't create CURSOR plane\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't create GDP plane\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sti_compositor_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_compositor_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sti_compositor*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sti_private*, align 8
  %15 = alloca %struct.drm_plane*, align 8
  %16 = alloca %struct.drm_plane*, align 8
  %17 = alloca %struct.sti_compositor_subdev_descriptor*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.sti_compositor* @dev_get_drvdata(%struct.device* %20)
  store %struct.sti_compositor* %21, %struct.sti_compositor** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.drm_device*
  store %struct.drm_device* %23, %struct.drm_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = load %struct.sti_private*, %struct.sti_private** %25, align 8
  store %struct.sti_private* %26, %struct.sti_private** %14, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %15, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %16, align 8
  %27 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %28 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %29, align 8
  store %struct.sti_compositor_subdev_descriptor* %30, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %31 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %32 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %18, align 4
  %35 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %36 = load %struct.sti_private*, %struct.sti_private** %14, align 8
  %37 = getelementptr inbounds %struct.sti_private, %struct.sti_private* %36, i32 0, i32 0
  store %struct.sti_compositor* %35, %struct.sti_compositor** %37, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %111, %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %114

42:                                               ; preds = %38
  %43 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %43, i64 %45
  %47 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %108 [
    i32 128, label %49
    i32 129, label %78
    i32 130, label %78
    i32 131, label %107
    i32 132, label %107
  ]

49:                                               ; preds = %42
  %50 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %51 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %54 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %54, i64 %56
  %58 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %61 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %63, i64 %65
  %67 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %62, %68
  %70 = call i32 @sti_vid_create(i32 %52, %struct.drm_device* %53, i32 %59, i64 %69)
  %71 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %72 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  br label %110

78:                                               ; preds = %42, %42
  %79 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %80 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %83 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %83, i64 %85
  %87 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %90 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %92, i64 %94
  %96 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %91, %97
  %99 = call i32 @sti_mixer_create(i32 %81, %struct.drm_device* %82, i32 %88, i64 %98)
  %100 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %101 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  br label %110

107:                                              ; preds = %42, %42
  br label %110

108:                                              ; preds = %42
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %225

110:                                              ; preds = %107, %78, %49
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %38

114:                                              ; preds = %38
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %216, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %219

119:                                              ; preds = %115
  %120 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %124, %119
  %127 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %127, i64 %129
  %131 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %192 [
    i32 129, label %133
    i32 130, label %133
    i32 128, label %133
    i32 132, label %134
    i32 131, label %161
  ]

133:                                              ; preds = %126, %126, %126
  br label %194

134:                                              ; preds = %126
  %135 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %136 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %137 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %139, i64 %141
  %143 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %146 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %148, i64 %150
  %152 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %147, %153
  %155 = call %struct.drm_plane* @sti_cursor_create(%struct.drm_device* %135, i32 %138, i32 %144, i64 %154, i32 1)
  store %struct.drm_plane* %155, %struct.drm_plane** %15, align 8
  %156 = load %struct.drm_plane*, %struct.drm_plane** %15, align 8
  %157 = icmp ne %struct.drm_plane* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %134
  %159 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %194

160:                                              ; preds = %134
  br label %194

161:                                              ; preds = %126
  %162 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %163 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %164 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %166, i64 %168
  %170 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %173 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.sti_compositor_subdev_descriptor*, %struct.sti_compositor_subdev_descriptor** %17, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %175, i64 %177
  %179 = getelementptr inbounds %struct.sti_compositor_subdev_descriptor, %struct.sti_compositor_subdev_descriptor* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %174, %180
  %182 = load i32, i32* %11, align 4
  %183 = shl i32 1, %182
  %184 = sub nsw i32 %183, 1
  %185 = load i32, i32* %19, align 4
  %186 = call %struct.drm_plane* @sti_gdp_create(%struct.drm_device* %162, i32 %165, i32 %171, i64 %181, i32 %184, i32 %185)
  store %struct.drm_plane* %186, %struct.drm_plane** %16, align 8
  %187 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  %188 = icmp ne %struct.drm_plane* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %161
  %190 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %194

191:                                              ; preds = %161
  br label %194

192:                                              ; preds = %126
  %193 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %225

194:                                              ; preds = %191, %189, %160, %158, %133
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  %200 = icmp ne %struct.drm_plane* %199, null
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %203 = load %struct.sti_compositor*, %struct.sti_compositor** %8, align 8
  %204 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  %211 = load %struct.drm_plane*, %struct.drm_plane** %15, align 8
  %212 = call i32 @sti_crtc_init(%struct.drm_device* %202, i32 %209, %struct.drm_plane* %210, %struct.drm_plane* %211)
  %213 = load i32, i32* %13, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %13, align 4
  store %struct.drm_plane* null, %struct.drm_plane** %15, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %16, align 8
  br label %215

215:                                              ; preds = %201, %198, %194
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %10, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %115

219:                                              ; preds = %115
  %220 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @drm_vblank_init(%struct.drm_device* %220, i32 %221)
  %223 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %224 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %219, %192, %108
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.sti_compositor* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sti_vid_create(i32, %struct.drm_device*, i32, i64) #1

declare dso_local i32 @sti_mixer_create(i32, %struct.drm_device*, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_plane* @sti_cursor_create(%struct.drm_device*, i32, i32, i64, i32) #1

declare dso_local %struct.drm_plane* @sti_gdp_create(%struct.drm_device*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @sti_crtc_init(%struct.drm_device*, i32, %struct.drm_plane*, %struct.drm_plane*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

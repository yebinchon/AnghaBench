; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.drm_connector_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64, i32*, %struct.TYPE_11__*, i64*, i64 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.malidp_mw_connector_state = type { i64, i32*, i32, i32, i64* }
%struct.drm_format_name_buf = type { i32 }
%struct.drm_gem_cma_object = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Writeback framebuffer does not support modifiers\0A\00", align 1
@SE_MEMWRITE = common dso_local global i32 0, align 4
@MALIDP_INVALID_FORMAT_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid pixel format %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid pitch %u for plane %d\0A\00", align 1
@rgb2yuv_coeffs_bt709_limited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @malidp_mw_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_mw_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.malidp_mw_connector_state*, align 8
  %9 = alloca %struct.malidp_drm*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_format_name_buf, align 4
  %14 = alloca %struct.drm_gem_cma_object*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %17 = call %struct.malidp_mw_connector_state* @to_mw_state(%struct.drm_connector_state* %16)
  store %struct.malidp_mw_connector_state* %17, %struct.malidp_mw_connector_state** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.malidp_drm*, %struct.malidp_drm** %21, align 8
  store %struct.malidp_drm* %22, %struct.malidp_drm** %9, align 8
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %24 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %198

28:                                               ; preds = %3
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %10, align 8
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %35 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %38 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %28
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %47 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %42, %28
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %198

61:                                               ; preds = %42
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %198

70:                                               ; preds = %61
  %71 = load %struct.malidp_drm*, %struct.malidp_drm** %9, align 8
  %72 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* @SE_MEMWRITE, align 4
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 3
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %84 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @malidp_hw_get_format_id(i32* %76, i32 %77, i32 %82, i32 %89)
  %91 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %92 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %94 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MALIDP_INVALID_FORMAT_ID, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %70
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @drm_get_format_name(i32 %103, %struct.drm_format_name_buf* %13)
  %105 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %198

108:                                              ; preds = %70
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 3
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %180, %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %183

118:                                              ; preds = %114
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %119, i32 %120)
  store %struct.drm_gem_cma_object* %121, %struct.drm_gem_cma_object** %14, align 8
  %122 = load %struct.malidp_drm*, %struct.malidp_drm** %9, align 8
  %123 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = call i32 @malidp_hw_get_pitch_align(%struct.TYPE_12__* %124, i32 0)
  store i32 %125, i32* %15, align 4
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %127 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, 1
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %118
  %138 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %139 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %198

149:                                              ; preds = %118
  %150 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %151 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %158 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %156, i32* %162, align 4
  %163 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %14, align 8
  %164 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %167 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %166, i32 0, i32 4
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %165, %172
  %174 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %175 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %174, i32 0, i32 4
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %173, i64* %179, align 8
  br label %180

180:                                              ; preds = %149
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %114

183:                                              ; preds = %114
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %186 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %188 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %187, i32 0, i32 3
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %183
  %194 = load i32, i32* @rgb2yuv_coeffs_bt709_limited, align 4
  %195 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %8, align 8
  %196 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %183
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %137, %98, %66, %51, %27
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.malidp_mw_connector_state* @to_mw_state(%struct.drm_connector_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @malidp_hw_get_format_id(i32*, i32, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @malidp_hw_get_pitch_align(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

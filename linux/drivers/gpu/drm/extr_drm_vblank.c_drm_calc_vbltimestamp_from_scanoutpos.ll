; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_calc_vbltimestamp_from_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_calc_vbltimestamp_from_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, %struct.drm_vblank_crtc* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)* }
%struct.drm_display_mode = type { i64, i32 }
%struct.drm_vblank_crtc = type { %struct.drm_display_mode }
%struct.timespec64 = type { i32, i64 }
%struct.drm_crtc = type { %struct.drm_display_mode }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Called from driver w/o get_scanout_position()!?\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"crtc %u: Noop due to uninitialized mode.\0A\00", align 1
@DRM_TIMESTAMP_MAXRETRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"crtc %u : scanoutpos query failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"crtc %u: Noisy timestamp %d us > %d us [%d reps].\0A\00", align 1
@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_VBL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"crtc %u : v p(%d,%d)@ %lld.%06ld -> %lld.%06ld [e %d us, %d rep]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca %struct.timespec64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.drm_crtc*, align 8
  %18 = alloca %struct.drm_display_mode*, align 8
  %19 = alloca %struct.drm_vblank_crtc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.timespec64, align 8
  %26 = alloca %struct.timespec64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 2
  %29 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %29, i64 %31
  store %struct.drm_vblank_crtc* %32, %struct.drm_vblank_crtc** %19, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %34 = load i32, i32* @DRIVER_MODESET, align 4
  %35 = call i32 @drm_core_check_feature(%struct.drm_device* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %196

38:                                               ; preds = %5
  %39 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %39, i32 %40)
  store %struct.drm_crtc* %41, %struct.drm_crtc** %17, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %49 = icmp ne %struct.drm_crtc* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %6, align 4
  br label %196

53:                                               ; preds = %47
  %54 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)** %57, align 8
  %59 = icmp ne i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %196

62:                                               ; preds = %53
  %63 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %64 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %19, align 8
  %68 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %67, i32 0, i32 0
  store %struct.drm_display_mode* %68, %struct.drm_display_mode** %18, align 8
  br label %72

69:                                               ; preds = %62
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %71 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %70, i32 0, i32 0
  store %struct.drm_display_mode* %71, %struct.drm_display_mode** %18, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %81 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %80)
  %82 = call i32 @WARN_ON_ONCE(i64 %81)
  store i32 0, i32* %6, align 4
  br label %196

83:                                               ; preds = %72
  store i32 0, i32* %22, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* @DRM_TIMESTAMP_MAXRETRIES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  %89 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, %struct.drm_display_mode*)** %92, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  %98 = call i32 %93(%struct.drm_device* %94, i32 %95, i32 %96, i32* %20, i32* %21, i32* %14, i32* %15, %struct.drm_display_mode* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  store i32 0, i32* %6, align 4
  br label %196

104:                                              ; preds = %88
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @ktime_to_ns(i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @ktime_to_ns(i32 %107)
  %109 = sub nsw i32 %106, %108
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %119

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %22, align 4
  br label %84

119:                                              ; preds = %114, %84
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* @DRM_TIMESTAMP_MAXRETRIES, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %24, align 4
  %126 = sdiv i32 %125, 1000
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 1000
  %130 = load i32, i32* %22, align 4
  %131 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %126, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %119
  %133 = load i32, i32* %24, align 4
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %135, %138
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 1000000, %142
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @div_s64(i64 %143, i64 %146)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @ktime_sub_ns(i32 %148, i32 %149)
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @drm_debug, align 4
  %153 = load i32, i32* @DRM_UT_VBL, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %132
  store i32 1, i32* %6, align 4
  br label %196

157:                                              ; preds = %132
  %158 = load i32, i32* %15, align 4
  %159 = call { i32, i64 } @ktime_to_timespec64(i32 %158)
  %160 = bitcast %struct.timespec64* %25 to { i32, i64 }*
  %161 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %160, i32 0, i32 0
  %162 = extractvalue { i32, i64 } %159, 0
  store i32 %162, i32* %161, align 8
  %163 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %160, i32 0, i32 1
  %164 = extractvalue { i32, i64 } %159, 1
  store i64 %164, i64* %163, align 8
  %165 = bitcast %struct.timespec64* %12 to i8*
  %166 = bitcast %struct.timespec64* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 16, i1 false)
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call { i32, i64 } @ktime_to_timespec64(i32 %168)
  %170 = bitcast %struct.timespec64* %26 to { i32, i64 }*
  %171 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %170, i32 0, i32 0
  %172 = extractvalue { i32, i64 } %169, 0
  store i32 %172, i32* %171, align 8
  %173 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %170, i32 0, i32 1
  %174 = extractvalue { i32, i64 } %169, 1
  store i64 %174, i64* %173, align 8
  %175 = bitcast %struct.timespec64* %13 to i8*
  %176 = bitcast %struct.timespec64* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 16, i1 false)
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %20, align 4
  %180 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sdiv i32 %184, 1000
  %186 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sdiv i32 %190, 1000
  %192 = load i32, i32* %24, align 4
  %193 = sdiv i32 %192, 1000
  %194 = load i32, i32* %22, align 4
  %195 = call i32 @DRM_DEBUG_VBL(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %177, i32 %178, i32 %179, i32 %182, i32 %185, i32 %188, i32 %191, i32 %193, i32 %194)
  store i32 1, i32* %6, align 4
  br label %196

196:                                              ; preds = %157, %156, %101, %77, %60, %50, %37
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @div_s64(i64, i64) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

declare dso_local { i32, i64 } @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG_VBL(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

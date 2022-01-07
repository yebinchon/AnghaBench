; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_mode_for_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_mode_for_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32, i32, i32*, %struct.drm_crtc* }
%struct.drm_crtc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_mode_modeinfo = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Set [MODE:%s] for [CRTC:%d:%s] state %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Set [NOMODE] for [CRTC:%d:%s] state %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_set_mode_for_crtc(%struct.drm_crtc_state* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_mode_modeinfo, align 4
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %8, i32 0, i32 3
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  store %struct.drm_crtc* %10, %struct.drm_crtc** %6, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = icmp ne %struct.drm_display_mode* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %14, i32 0, i32 1
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = call i64 @memcmp(i32* %15, %struct.drm_display_mode* %16, i32 4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %87

20:                                               ; preds = %13, %2
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %22 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @drm_property_blob_put(i32* %23)
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = icmp ne %struct.drm_display_mode* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %20
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = call i32 @drm_mode_convert_to_umode(%struct.drm_mode_modeinfo* %7, %struct.drm_display_mode* %30)
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %32, i32 0, i32 3
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %33, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @drm_property_create_blob(i32 %36, i32 4, %struct.drm_mode_modeinfo* %7)
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %47 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %29
  %51 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %51, i32 0, i32 1
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %54 = call i32 @drm_mode_copy(i32* %52, %struct.drm_display_mode* %53)
  %55 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %56 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.drm_crtc_state*
  %69 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %70 = call i32 (i8*, i32, i32, %struct.drm_crtc_state*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, %struct.drm_crtc_state* %68, %struct.drm_crtc_state* %69)
  br label %86

71:                                               ; preds = %20
  %72 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %73 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %72, i32 0, i32 1
  %74 = call i32 @memset(i32* %73, i32 0, i32 4)
  %75 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %76 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %78 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %82 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %85 = call i32 (i8*, i32, i32, %struct.drm_crtc_state*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, %struct.drm_crtc_state* %84)
  br label %86

86:                                               ; preds = %71, %50
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %45, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @memcmp(i32*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_property_blob_put(i32*) #1

declare dso_local i32 @drm_mode_convert_to_umode(%struct.drm_mode_modeinfo*, %struct.drm_display_mode*) #1

declare dso_local i32* @drm_property_create_blob(i32, i32, %struct.drm_mode_modeinfo*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @drm_mode_copy(i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, %struct.drm_crtc_state*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.drm_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@drm_fmts = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @vc4_txp_connector_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_txp_connector_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %10, %struct.drm_connector* %11)
  store %struct.drm_connector_state* %12, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %20 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %19, i32 %22)
  store %struct.drm_crtc_state* %23, %struct.drm_crtc_state** %7, align 8
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %27, align 8
  store %struct.drm_framebuffer* %28, %struct.drm_framebuffer** %8, align 8
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %33 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %18
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %42 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %37, %18
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %51 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %102

56:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i64*, i64** @drm_fmts, align 8
  %60 = call i32 @ARRAY_SIZE(i64* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** @drm_fmts, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %79

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %57

79:                                               ; preds = %74, %57
  %80 = load i32, i32* %9, align 4
  %81 = load i64*, i64** @drm_fmts, align 8
  %82 = call i32 @ARRAY_SIZE(i64* %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %102

87:                                               ; preds = %79
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %89 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @GENMASK(i32 3, i32 0)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %102

99:                                               ; preds = %87
  %100 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %101 = call i32 @vc4_crtc_txp_armed(%struct.drm_crtc_state* %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %96, %84, %46, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @vc4_crtc_txp_armed(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64, %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.drm_plane_state*, i32, %struct.drm_plane*, %struct.drm_plane_state* }
%struct.drm_plane = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_plane_state* (%struct.drm_plane*)* }
%struct.drm_crtc_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Added [PLANE:%d:%s] %p state to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %0, %struct.drm_plane* %1) #0 {
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %11 = call i32 @drm_plane_index(%struct.drm_plane* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %24 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %32 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %33 = call %struct.drm_plane_state* @drm_atomic_get_existing_plane_state(%struct.drm_atomic_state* %31, %struct.drm_plane* %32)
  store %struct.drm_plane_state* %33, %struct.drm_plane_state** %8, align 8
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %35 = icmp ne %struct.drm_plane_state* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  store %struct.drm_plane_state* %37, %struct.drm_plane_state** %3, align 8
  br label %131

38:                                               ; preds = %2
  %39 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 7
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %42 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @drm_modeset_lock(i32* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.drm_plane_state* @ERR_PTR(i32 %48)
  store %struct.drm_plane_state* %49, %struct.drm_plane_state** %3, align 8
  br label %131

50:                                               ; preds = %38
  %51 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %52 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %51, i32 0, i32 6
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.drm_plane_state* (%struct.drm_plane*)*, %struct.drm_plane_state* (%struct.drm_plane*)** %54, align 8
  %56 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %57 = call %struct.drm_plane_state* %55(%struct.drm_plane* %56)
  store %struct.drm_plane_state* %57, %struct.drm_plane_state** %8, align 8
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %59 = icmp ne %struct.drm_plane_state* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.drm_plane_state* @ERR_PTR(i32 %62)
  store %struct.drm_plane_state* %63, %struct.drm_plane_state** %3, align 8
  br label %131

64:                                               ; preds = %50
  %65 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %66 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %67 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store %struct.drm_plane_state* %65, %struct.drm_plane_state** %72, align 8
  %73 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %74 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %75 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store %struct.drm_plane* %73, %struct.drm_plane** %80, align 8
  %81 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %85 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %83, i32* %90, align 8
  %91 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %92 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %93 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.drm_plane_state* %91, %struct.drm_plane_state** %98, align 8
  %99 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %100 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %101 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %100, i32 0, i32 1
  store %struct.drm_atomic_state* %99, %struct.drm_atomic_state** %101, align 8
  %102 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %103 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %107 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %110 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %111 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108, %struct.drm_plane_state* %109, %struct.drm_atomic_state* %110)
  %112 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %113 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %64
  %117 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %118 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %119 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %117, i64 %120)
  store %struct.drm_crtc_state* %121, %struct.drm_crtc_state** %9, align 8
  %122 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %123 = call i64 @IS_ERR(%struct.drm_crtc_state* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %127 = call %struct.drm_plane_state* @ERR_CAST(%struct.drm_crtc_state* %126)
  store %struct.drm_plane_state* %127, %struct.drm_plane_state** %3, align 8
  br label %131

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %64
  %130 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  store %struct.drm_plane_state* %130, %struct.drm_plane_state** %3, align 8
  br label %131

131:                                              ; preds = %129, %125, %60, %47, %36
  %132 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  ret %struct.drm_plane_state* %132
}

declare dso_local i32 @drm_plane_index(%struct.drm_plane*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_existing_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32) #1

declare dso_local %struct.drm_plane_state* @ERR_PTR(i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, %struct.drm_plane_state*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local %struct.drm_plane_state* @ERR_CAST(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

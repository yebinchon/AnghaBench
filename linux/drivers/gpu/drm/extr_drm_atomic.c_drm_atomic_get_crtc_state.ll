; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_crtc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_crtc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.drm_crtc*, %struct.drm_crtc_state*, i32, %struct.drm_crtc_state* }
%struct.drm_crtc = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_crtc_state* (%struct.drm_crtc*)* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Added [CRTC:%d:%s] %p state to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_crtc_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %10 = call i32 @drm_crtc_index(%struct.drm_crtc* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %12 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %20 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(%struct.drm_atomic_state* %18, %struct.drm_crtc* %19)
  store %struct.drm_crtc_state* %20, %struct.drm_crtc_state** %8, align 8
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %22 = icmp ne %struct.drm_crtc_state* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  store %struct.drm_crtc_state* %24, %struct.drm_crtc_state** %3, align 8
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 4
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @drm_modeset_lock(i32* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.drm_crtc_state* @ERR_PTR(i32 %35)
  store %struct.drm_crtc_state* %36, %struct.drm_crtc_state** %3, align 8
  br label %100

37:                                               ; preds = %25
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.drm_crtc_state* (%struct.drm_crtc*)*, %struct.drm_crtc_state* (%struct.drm_crtc*)** %41, align 8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %44 = call %struct.drm_crtc_state* %42(%struct.drm_crtc* %43)
  store %struct.drm_crtc_state* %44, %struct.drm_crtc_state** %8, align 8
  %45 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %46 = icmp ne %struct.drm_crtc_state* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.drm_crtc_state* @ERR_PTR(i32 %49)
  store %struct.drm_crtc_state* %50, %struct.drm_crtc_state** %3, align 8
  br label %100

51:                                               ; preds = %37
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %54 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store %struct.drm_crtc_state* %52, %struct.drm_crtc_state** %59, align 8
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %64 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %62, i32* %69, align 8
  %70 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %71 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %72 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.drm_crtc_state* %70, %struct.drm_crtc_state** %77, align 8
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %79 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %80 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store %struct.drm_crtc* %78, %struct.drm_crtc** %85, align 8
  %86 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %87 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %88 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %87, i32 0, i32 0
  store %struct.drm_atomic_state* %86, %struct.drm_atomic_state** %88, align 8
  %89 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %90 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %97 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %98 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, %struct.drm_crtc_state* %96, %struct.drm_atomic_state* %97)
  %99 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  store %struct.drm_crtc_state* %99, %struct.drm_crtc_state** %3, align 8
  br label %100

100:                                              ; preds = %51, %47, %34, %23
  %101 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  ret %struct.drm_crtc_state* %101
}

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32) #1

declare dso_local %struct.drm_crtc_state* @ERR_PTR(i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, %struct.drm_crtc_state*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_crtc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_crtc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i64, i64, i64, i64, %struct.drm_crtc* }
%struct.drm_crtc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"[CRTC:%d:%s] active without enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"[CRTC:%d:%s] enabled without mode blob\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"[CRTC:%d:%s] disabled with mode blob\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"[CRTC:%d:%s] requesting event but off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc_state*, %struct.drm_crtc_state*)* @drm_atomic_crtc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_atomic_crtc_check(%struct.drm_crtc_state* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %7 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %8 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %7, i32 0, i32 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  store %struct.drm_crtc* %9, %struct.drm_crtc** %6, align 8
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %124

30:                                               ; preds = %14, %2
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DRIVER_ATOMIC, align 4
  %35 = call i64 @drm_core_check_feature(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %44 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %124

64:                                               ; preds = %48, %30
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %66 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DRIVER_ATOMIC, align 4
  %69 = call i64 @drm_core_check_feature(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %64
  %72 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %73 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %78 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = call i64 @WARN_ON(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %92 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %124

97:                                               ; preds = %81, %64
  %98 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %99 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %104 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %102
  %108 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %109 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %114 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %118 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %124

123:                                              ; preds = %107, %102, %97
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %112, %86, %53, %19
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32) #1

declare dso_local i64 @drm_core_check_feature(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

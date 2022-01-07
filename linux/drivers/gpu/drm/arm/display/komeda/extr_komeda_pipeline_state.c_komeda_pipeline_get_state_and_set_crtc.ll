; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_pipeline_get_state_and_set_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_pipeline_get_state_and_set_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline_state = type { %struct.drm_crtc*, i64 }
%struct.komeda_pipeline = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.komeda_crtc_state = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"CRTC%d required pipeline%d is busy.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Disabling a busy pipeline:%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_pipeline_state* (%struct.komeda_pipeline*, %struct.drm_atomic_state*, %struct.drm_crtc*)* @komeda_pipeline_get_state_and_set_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_pipeline_state* @komeda_pipeline_get_state_and_set_crtc(%struct.komeda_pipeline* %0, %struct.drm_atomic_state* %1, %struct.drm_crtc* %2) #0 {
  %4 = alloca %struct.komeda_pipeline_state*, align 8
  %5 = alloca %struct.komeda_pipeline*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.komeda_pipeline_state*, align 8
  %9 = alloca %struct.komeda_crtc_state*, align 8
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store %struct.drm_crtc* %2, %struct.drm_crtc** %7, align 8
  %10 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %12 = call %struct.komeda_pipeline_state* @komeda_pipeline_get_state(%struct.komeda_pipeline* %10, %struct.drm_atomic_state* %11)
  store %struct.komeda_pipeline_state* %12, %struct.komeda_pipeline_state** %8, align 8
  %13 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  %14 = call i64 @IS_ERR(%struct.komeda_pipeline_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  store %struct.komeda_pipeline_state* %17, %struct.komeda_pipeline_state** %4, align 8
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  %21 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %20, i32 0, i32 0
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  %23 = call i64 @is_switching_user(%struct.drm_crtc* %19, %struct.drm_crtc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %27 = call i32 @drm_crtc_index(%struct.drm_crtc* %26)
  %28 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %29 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.komeda_pipeline_state* @ERR_PTR(i32 %33)
  store %struct.komeda_pipeline_state* %34, %struct.komeda_pipeline_state** %4, align 8
  br label %80

35:                                               ; preds = %18
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %37 = icmp ne %struct.drm_crtc* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  %40 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %45 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.komeda_pipeline_state* @ERR_PTR(i32 %49)
  store %struct.komeda_pipeline_state* %50, %struct.komeda_pipeline_state** %4, align 8
  br label %80

51:                                               ; preds = %38, %35
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %53 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  %54 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %53, i32 0, i32 0
  store %struct.drm_crtc* %52, %struct.drm_crtc** %54, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %56 = icmp ne %struct.drm_crtc* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %60 = call i32 @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %58, %struct.drm_crtc* %59)
  %61 = call %struct.komeda_crtc_state* @to_kcrtc_st(i32 %60)
  store %struct.komeda_crtc_state* %61, %struct.komeda_crtc_state** %9, align 8
  %62 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %63 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %9, align 8
  %67 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %71 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %9, align 8
  %75 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %57, %51
  %79 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %8, align 8
  store %struct.komeda_pipeline_state* %79, %struct.komeda_pipeline_state** %4, align 8
  br label %80

80:                                               ; preds = %78, %43, %25, %16
  %81 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %4, align 8
  ret %struct.komeda_pipeline_state* %81
}

declare dso_local %struct.komeda_pipeline_state* @komeda_pipeline_get_state(%struct.komeda_pipeline*, %struct.drm_atomic_state*) #1

declare dso_local i64 @IS_ERR(%struct.komeda_pipeline_state*) #1

declare dso_local i64 @is_switching_user(%struct.drm_crtc*, %struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, ...) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local %struct.komeda_pipeline_state* @ERR_PTR(i32) #1

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(i32) #1

declare dso_local i32 @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

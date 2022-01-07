; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_state_and_set_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_state_and_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component_state = type { i32, i8* }
%struct.komeda_component = type { i32, i32, i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.komeda_pipeline_state = type { i32, i8* }

@.str = private unnamed_addr constant [22 x i8] c"required %s is busy.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_component_state* (%struct.komeda_component*, %struct.drm_atomic_state*, i8*, %struct.drm_crtc*)* @komeda_component_get_state_and_set_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_component_state* @komeda_component_get_state_and_set_user(%struct.komeda_component* %0, %struct.drm_atomic_state* %1, i8* %2, %struct.drm_crtc* %3) #0 {
  %5 = alloca %struct.komeda_component_state*, align 8
  %6 = alloca %struct.komeda_component*, align 8
  %7 = alloca %struct.drm_atomic_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.komeda_pipeline_state*, align 8
  %11 = alloca %struct.komeda_component_state*, align 8
  store %struct.komeda_component* %0, %struct.komeda_component** %6, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.drm_crtc* %3, %struct.drm_crtc** %9, align 8
  %12 = load %struct.komeda_component*, %struct.komeda_component** %6, align 8
  %13 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %17 = call %struct.komeda_pipeline_state* @komeda_pipeline_get_state_and_set_crtc(i32 %14, %struct.drm_atomic_state* %15, %struct.drm_crtc* %16)
  store %struct.komeda_pipeline_state* %17, %struct.komeda_pipeline_state** %10, align 8
  %18 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %10, align 8
  %19 = call i64 @IS_ERR(%struct.komeda_pipeline_state* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %10, align 8
  %23 = call %struct.komeda_pipeline_state* @ERR_CAST(%struct.komeda_pipeline_state* %22)
  %24 = bitcast %struct.komeda_pipeline_state* %23 to %struct.komeda_component_state*
  store %struct.komeda_component_state* %24, %struct.komeda_component_state** %5, align 8
  br label %71

25:                                               ; preds = %4
  %26 = load %struct.komeda_component*, %struct.komeda_component** %6, align 8
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %28 = call %struct.komeda_pipeline_state* @komeda_component_get_state(%struct.komeda_component* %26, %struct.drm_atomic_state* %27)
  %29 = bitcast %struct.komeda_pipeline_state* %28 to %struct.komeda_component_state*
  store %struct.komeda_component_state* %29, %struct.komeda_component_state** %11, align 8
  %30 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %31 = bitcast %struct.komeda_component_state* %30 to %struct.komeda_pipeline_state*
  %32 = call i64 @IS_ERR(%struct.komeda_pipeline_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  store %struct.komeda_component_state* %35, %struct.komeda_component_state** %5, align 8
  br label %71

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %39 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @is_switching_user(i8* %37, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.komeda_component*, %struct.komeda_component** %6, align 8
  %45 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.komeda_pipeline_state* @ERR_PTR(i32 %49)
  %51 = bitcast %struct.komeda_pipeline_state* %50 to %struct.komeda_component_state*
  store %struct.komeda_component_state* %51, %struct.komeda_component_state** %5, align 8
  br label %71

52:                                               ; preds = %36
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %55 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  %57 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.komeda_component*, %struct.komeda_component** %6, align 8
  %62 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %10, align 8
  %66 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %60, %52
  %70 = load %struct.komeda_component_state*, %struct.komeda_component_state** %11, align 8
  store %struct.komeda_component_state* %70, %struct.komeda_component_state** %5, align 8
  br label %71

71:                                               ; preds = %69, %43, %34, %21
  %72 = load %struct.komeda_component_state*, %struct.komeda_component_state** %5, align 8
  ret %struct.komeda_component_state* %72
}

declare dso_local %struct.komeda_pipeline_state* @komeda_pipeline_get_state_and_set_crtc(i32, %struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.komeda_pipeline_state*) #1

declare dso_local %struct.komeda_pipeline_state* @ERR_CAST(%struct.komeda_pipeline_state*) #1

declare dso_local %struct.komeda_pipeline_state* @komeda_component_get_state(%struct.komeda_component*, %struct.drm_atomic_state*) #1

declare dso_local i64 @is_switching_user(i8*, i8*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32) #1

declare dso_local %struct.komeda_pipeline_state* @ERR_PTR(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

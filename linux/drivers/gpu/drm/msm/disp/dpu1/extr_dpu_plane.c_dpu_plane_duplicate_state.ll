; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.dpu_plane = type { i32 }
%struct.dpu_plane_state = type { i32, %struct.drm_plane_state }

@.str = private unnamed_addr constant [15 x i8] c"invalid plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid plane state\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to allocate state\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @dpu_plane_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @dpu_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.dpu_plane*, align 8
  %5 = alloca %struct.dpu_plane_state*, align 8
  %6 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = icmp ne %struct.drm_plane* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %45

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dpu_plane_state* @to_dpu_plane_state(i32 %22)
  store %struct.dpu_plane_state* %23, %struct.dpu_plane_state** %6, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %24)
  store %struct.dpu_plane* %25, %struct.dpu_plane** %4, align 8
  %26 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.dpu_plane_state* @kmemdup(%struct.dpu_plane_state* %26, i32 8, i32 %27)
  store %struct.dpu_plane_state* %28, %struct.dpu_plane_state** %5, align 8
  %29 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %30 = icmp ne %struct.dpu_plane_state* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %33 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %45

34:                                               ; preds = %19
  %35 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %36 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %40 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %40, i32 0, i32 1
  %42 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %39, %struct.drm_plane_state* %41)
  %43 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %44 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %43, i32 0, i32 1
  store %struct.drm_plane_state* %44, %struct.drm_plane_state** %2, align 8
  br label %45

45:                                               ; preds = %34, %31, %16, %9
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %46
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(i32) #1

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_plane_state* @kmemdup(%struct.dpu_plane_state*, i32, i32) #1

declare dso_local i32 @DPU_ERROR_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

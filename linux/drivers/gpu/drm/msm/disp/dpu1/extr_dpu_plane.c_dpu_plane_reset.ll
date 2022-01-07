; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_plane* }
%struct.dpu_plane = type { i32 }
%struct.dpu_plane_state = type { %struct.TYPE_2__ }

@.str = private unnamed_addr constant [15 x i8] c"invalid plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to allocate state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @dpu_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dpu_plane*, align 8
  %4 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = icmp ne %struct.drm_plane* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %10)
  store %struct.dpu_plane* %11, %struct.dpu_plane** %3, align 8
  %12 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %13 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @dpu_plane_destroy_state(%struct.drm_plane* %19, %struct.TYPE_2__* %22)
  %24 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %25, align 8
  br label %26

26:                                               ; preds = %18, %9
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.dpu_plane_state* @kzalloc(i32 8, i32 %27)
  store %struct.dpu_plane_state* %28, %struct.dpu_plane_state** %4, align 8
  %29 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %4, align 8
  %30 = icmp ne %struct.dpu_plane_state* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %33 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %43

34:                                               ; preds = %26
  %35 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %36 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %4, align 8
  %37 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.drm_plane* %35, %struct.drm_plane** %38, align 8
  %39 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %39, i32 0, i32 0
  %41 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  br label %43

43:                                               ; preds = %34, %31, %7
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local i32 @dpu_plane_destroy_state(%struct.drm_plane*, %struct.TYPE_2__*) #1

declare dso_local %struct.dpu_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @DPU_ERROR_PLANE(%struct.dpu_plane*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

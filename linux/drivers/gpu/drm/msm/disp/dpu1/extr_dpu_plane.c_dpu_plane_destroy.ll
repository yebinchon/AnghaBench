; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.dpu_plane = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DPU_PLANE_QOS_PANIC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @dpu_plane_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_plane_destroy(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dpu_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = icmp ne %struct.drm_plane* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %7)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi %struct.dpu_plane* [ %8, %6 ], [ null, %9 ]
  store %struct.dpu_plane* %11, %struct.dpu_plane** %3, align 8
  %12 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %13 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %15 = icmp ne %struct.dpu_plane* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = load i32, i32* @DPU_PLANE_QOS_PANIC_CTRL, align 4
  %19 = call i32 @_dpu_plane_set_qos_ctrl(%struct.drm_plane* %17, i32 0, i32 %18)
  %20 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %20, i32 0, i32 1
  %22 = call i32 @mutex_destroy(i32* %21)
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = call i32 @drm_plane_cleanup(%struct.drm_plane* %23)
  %25 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %26 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dpu_hw_sspp_destroy(i32 %27)
  %29 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %30 = call i32 @kfree(%struct.dpu_plane* %29)
  br label %31

31:                                               ; preds = %16, %10
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local i32 @_dpu_plane_set_qos_ctrl(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.drm_plane*) #1

declare dso_local i32 @dpu_hw_sspp_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dpu_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

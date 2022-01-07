; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dpu_plane = type { i32 }
%struct.dpu_plane_state = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"FB[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @dpu_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.dpu_plane*, align 8
  %6 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %7)
  store %struct.dpu_plane* %8, %struct.dpu_plane** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = icmp ne %struct.drm_plane_state* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %35

17:                                               ; preds = %11
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %19 = call %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state* %18)
  store %struct.dpu_plane_state* %19, %struct.dpu_plane_state** %6, align 8
  %20 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %32 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msm_framebuffer_cleanup(%struct.TYPE_4__* %30, i32 %33)
  br label %35

35:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*, i32) #1

declare dso_local i32 @msm_framebuffer_cleanup(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

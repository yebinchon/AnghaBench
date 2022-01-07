; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }
%struct.dpu_plane_state = type { i32, i32 }

@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@DPU_SSPP_MULTIRECT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @_dpu_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_atomic_disable(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dpu_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %7 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %6)
  store %struct.dpu_plane* %7, %struct.dpu_plane** %3, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %9, align 8
  store %struct.drm_plane_state* %10, %struct.drm_plane_state** %4, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %12 = call %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state* %11)
  store %struct.dpu_plane_state* %12, %struct.dpu_plane_state** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %14 = call i32 @DRMID(%struct.drm_plane* %13)
  %15 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %16 = call i64 @is_dpu_plane_virtual(%struct.drm_plane* %15)
  %17 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_dpu_plane_disable(i32 %14, i64 %16, i32 %19)
  %21 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = call i64 @is_dpu_plane_virtual(%struct.drm_plane* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %1
  %27 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %28 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %33 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_4__*, i32, i32)* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %41 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %44, align 8
  %46 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %47 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %50 = load i32, i32* @DPU_SSPP_MULTIRECT_NONE, align 4
  %51 = call i32 %45(%struct.TYPE_4__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %31, %26, %1
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @trace_dpu_plane_disable(i32, i64, i32) #1

declare dso_local i32 @DRMID(%struct.drm_plane*) #1

declare dso_local i64 @is_dpu_plane_virtual(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

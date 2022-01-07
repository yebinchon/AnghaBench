; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dpu_plane = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dpu_vbif_set_qos_params = type { i32, i32, i32, i32, i64 }
%struct.dpu_kms = type { i32 }

@VBIF_RT = common dso_local global i32 0, align 4
@SSPP_VIG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @_dpu_plane_set_qos_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_qos_remap(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dpu_plane*, align 8
  %4 = alloca %struct.dpu_vbif_set_qos_params, align 8
  %5 = alloca %struct.dpu_kms*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %7 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %6)
  store %struct.dpu_plane* %7, %struct.dpu_plane** %3, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %9 = call %struct.dpu_kms* @_dpu_plane_get_kms(%struct.drm_plane* %8)
  store %struct.dpu_kms* %9, %struct.dpu_kms** %5, align 8
  %10 = call i32 @memset(%struct.dpu_vbif_set_qos_params* %4, i32 0, i32 24)
  %11 = load i32, i32* @VBIF_RT, align 4
  %12 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SSPP_VIG0, align 8
  %35 = sub nsw i64 %33, %34
  %36 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 4
  store i64 %35, i64* %36, align 8
  %37 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %38 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %46, i32 %48, i32 %50, i32 %52, i32 %54)
  %56 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %57 = call i32 @dpu_vbif_set_qos_remap(%struct.dpu_kms* %56, %struct.dpu_vbif_set_qos_params* %4)
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_kms* @_dpu_plane_get_kms(%struct.drm_plane*) #1

declare dso_local i32 @memset(%struct.dpu_vbif_set_qos_params*, i32, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dpu_vbif_set_qos_remap(%struct.dpu_kms*, %struct.dpu_vbif_set_qos_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

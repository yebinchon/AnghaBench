; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_enable_asle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_enable_asle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.opregion_asle* }
%struct.opregion_asle = type { i32, i32 }

@system_opregion = common dso_local global i64 0, align 8
@PIPE_LEGACY_BLC_EVENT_ENABLE = common dso_local global i32 0, align 4
@ASLE_ALS_EN = common dso_local global i32 0, align 4
@ASLE_BLC_EN = common dso_local global i32 0, align 4
@ASLE_PFIT_EN = common dso_local global i32 0, align 4
@ASLE_PFMB_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_intel_opregion_enable_asle(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.opregion_asle*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.opregion_asle*, %struct.opregion_asle** %10, align 8
  store %struct.opregion_asle* %11, %struct.opregion_asle** %4, align 8
  %12 = load %struct.opregion_asle*, %struct.opregion_asle** %4, align 8
  %13 = icmp ne %struct.opregion_asle* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load i64, i64* @system_opregion, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %19 = load i32, i32* @PIPE_LEGACY_BLC_EVENT_ENABLE, align 4
  %20 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %18, i32 0, i32 %19)
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %22 = load i32, i32* @PIPE_LEGACY_BLC_EVENT_ENABLE, align 4
  %23 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %21, i32 1, i32 %22)
  %24 = load i32, i32* @ASLE_ALS_EN, align 4
  %25 = load i32, i32* @ASLE_BLC_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ASLE_PFIT_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ASLE_PFMB_EN, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.opregion_asle*, %struct.opregion_asle** %4, align 8
  %32 = getelementptr inbounds %struct.opregion_asle, %struct.opregion_asle* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.opregion_asle*, %struct.opregion_asle** %4, align 8
  %34 = getelementptr inbounds %struct.opregion_asle, %struct.opregion_asle* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %17, %14, %1
  ret void
}

declare dso_local i32 @psb_enable_pipestat(%struct.drm_psb_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_vdd_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_vdd_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Skip VDD on because of panel on\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PP_CONTROL = common dso_local global i32 0, align 4
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_edp_panel_vdd_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %6 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %10, i32 0, i32 0
  %12 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %11, align 8
  store %struct.cdv_intel_dp* %12, %struct.cdv_intel_dp** %4, align 8
  %13 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %14 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %35

19:                                               ; preds = %1
  %20 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @PP_CONTROL, align 4
  %22 = call i32 @REG_READ(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @EDP_FORCE_VDD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @PP_CONTROL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @REG_WRITE(i32 %26, i32 %27)
  %29 = load i32, i32* @PP_CONTROL, align 4
  %30 = call i32 @REG_READ(i32 %29)
  %31 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %32 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @msleep(i32 %33)
  br label %35

35:                                               ; preds = %19, %17
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

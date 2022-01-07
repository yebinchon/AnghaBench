; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@PP_ON = common dso_local global i32 0, align 4
@PP_SEQUENCE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PP_CONTROL = common dso_local global i32 0, align 4
@PANEL_UNLOCK_MASK = common dso_local global i32 0, align 4
@PANEL_UNLOCK_REGS = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error in Powering up eDP panel, status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*)* @cdv_intel_edp_panel_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_edp_panel_on(%struct.gma_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.cdv_intel_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %3, align 8
  %8 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %12, i32 0, i32 0
  %14 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %13, align 8
  store %struct.cdv_intel_dp* %14, %struct.cdv_intel_dp** %5, align 8
  %15 = load i32, i32* @PP_ON, align 4
  %16 = load i32, i32* @PP_SEQUENCE_NONE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %64

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @PP_CONTROL, align 4
  %26 = call i32 @REG_READ(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @PANEL_UNLOCK_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %32 = load i32, i32* @POWER_TARGET_ON, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @PP_CONTROL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @REG_WRITE(i32 %36, i32 %37)
  %39 = load i32, i32* @PP_CONTROL, align 4
  %40 = call i32 @REG_READ(i32 %39)
  %41 = load i32, i32* @PP_STATUS, align 4
  %42 = call i32 @REG_READ(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @wait_for(i32 %47, i32 1000)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %23
  %51 = load i32, i32* @PP_STATUS, align 4
  %52 = call i32 @REG_READ(i32 %51)
  %53 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  %55 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %59

56:                                               ; preds = %23
  %57 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  %58 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  %61 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @msleep(i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

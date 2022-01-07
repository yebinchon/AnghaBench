; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_edp_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@PP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PP_CONTROL = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PANEL_UNLOCK_MASK = common dso_local global i32 0, align 4
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@EDP_BLC_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"PP_STATUS %x\0A\00", align 1
@PP_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error in turning off Panel\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Over\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_edp_panel_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_edp_panel_off(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdv_intel_dp*, align 8
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %7 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load i32, i32* @PP_ON, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %12, i32 0, i32 0
  %14 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %13, align 8
  store %struct.cdv_intel_dp* %14, %struct.cdv_intel_dp** %6, align 8
  %15 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @PP_CONTROL, align 4
  %17 = call i32 @REG_READ(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @POWER_TARGET_ON, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %66

23:                                               ; preds = %1
  %24 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  %25 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @PANEL_UNLOCK_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @POWER_TARGET_ON, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @EDP_FORCE_VDD, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @EDP_BLC_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PP_CONTROL, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @REG_WRITE(i32 %42, i32 %43)
  %45 = load i32, i32* @PP_CONTROL, align 4
  %46 = call i32 @REG_READ(i32 %45)
  %47 = load i32, i32* @PP_STATUS, align 4
  %48 = call i32 @REG_READ(i32 %47)
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @PP_STATUS, align 4
  %51 = call i32 @REG_READ(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @wait_for(i32 %55, i32 1000)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %23
  %59 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %23
  %61 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  %62 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msleep(i32 %63)
  %65 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %22
  ret void
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

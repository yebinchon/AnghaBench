; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_mode_device }
%struct.psb_intel_mode_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"set power, chip off!\0A\00", align 1
@PP_CONTROL = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @psb_intel_lvds_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_lvds_set_power(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.psb_intel_mode_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %5, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 0
  store %struct.psb_intel_mode_device* %12, %struct.psb_intel_mode_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @gma_power_begin(%struct.drm_device* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %67

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32, i32* @PP_CONTROL, align 4
  %26 = load i32, i32* @PP_CONTROL, align 4
  %27 = call i32 @REG_READ(i32 %26)
  %28 = load i32, i32* @POWER_TARGET_ON, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @REG_WRITE(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %34, %24
  %32 = load i32, i32* @PP_STATUS, align 4
  %33 = call i32 @REG_READ(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PP_ON, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %31, label %39

39:                                               ; preds = %34
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %42 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @psb_intel_lvds_set_backlight(%struct.drm_device* %40, i32 %43)
  br label %64

45:                                               ; preds = %21
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = call i32 @psb_intel_lvds_set_backlight(%struct.drm_device* %46, i32 0)
  %48 = load i32, i32* @PP_CONTROL, align 4
  %49 = load i32, i32* @PP_CONTROL, align 4
  %50 = call i32 @REG_READ(i32 %49)
  %51 = load i32, i32* @POWER_TARGET_ON, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @REG_WRITE(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %58, %45
  %56 = load i32, i32* @PP_STATUS, align 4
  %57 = call i32 @REG_READ(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PP_ON, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %55, label %63

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = call i32 @gma_power_end(%struct.drm_device* %65)
  br label %67

67:                                               ; preds = %64, %16
  ret void
}

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @psb_intel_lvds_set_backlight(%struct.drm_device*, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

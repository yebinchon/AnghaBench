; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_tc35876x-dsi-lvds.c_tc35876x_brightness_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_tc35876x-dsi-lvds.c_tc35876x_brightness_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIOPWMCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"GPIOPWMCTRL read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GPIOPWMCTRL set failed\0A\00", align 1
@SYSTEMCLK = common dso_local global i32 0, align 4
@PWM_FREQUENCY = common dso_local global i32 0, align 4
@PWM0CLKDIV1 = common dso_local global i32 0, align 4
@PWM0CLKDIV0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"PWM0CLKDIV set failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"PWM0CLKDIV set to 0x%04x (%d Hz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @tc35876x_brightness_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc35876x_brightness_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load i32, i32* @GPIOPWMCTRL, align 4
  %7 = call i32 @intel_scu_ipc_ioread8(i32 %6, i32* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %41

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

22:                                               ; preds = %13
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* @GPIOPWMCTRL, align 4
  %31 = call i32 @intel_scu_ipc_iowrite8(i32 %30, i32 1)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, i32* @SYSTEMCLK, align 4
  %43 = load i32, i32* @PWM_FREQUENCY, align 4
  %44 = call i32 @calc_clkdiv(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @PWM0CLKDIV1, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = call i32 @intel_scu_ipc_iowrite8(i32 %45, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @PWM0CLKDIV0, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 255
  %56 = call i32 @intel_scu_ipc_iowrite8(i32 %53, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %41
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %74

66:                                               ; preds = %57
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PWM_FREQUENCY, align 4
  %73 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %60
  ret void
}

declare dso_local i32 @intel_scu_ipc_ioread8(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @intel_scu_ipc_iowrite8(i32, i32) #1

declare dso_local i32 @calc_clkdiv(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

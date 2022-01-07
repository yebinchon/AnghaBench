; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@CRT_HOTPLUG_DETECT_MASK = common dso_local global i32 0, align 4
@CRT_HOTPLUG_FORCE_DETECT = common dso_local global i32 0, align 4
@CRT_HOTPLUG_ACTIVATION_PERIOD_64 = common dso_local global i32 0, align 4
@CRT_HOTPLUG_VOLTAGE_COMPARE_50 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_NONE = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @cdv_intel_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_crt_detect_hotplug(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %8, align 4
  %15 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %16 = call i32 @REG_READ(i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @CRT_HOTPLUG_DETECT_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CRT_HOTPLUG_ACTIVATION_PERIOD_64, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @CRT_HOTPLUG_VOLTAGE_COMPARE_50, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %56, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @REG_WRITE(i32 %35, i32 %36)
  %38 = load i64, i64* @jiffies, align 8
  %39 = call i64 @msecs_to_jiffies(i32 1000)
  %40 = add i64 %38, %39
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %50, %34
  %42 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %43 = call i32 @REG_READ(i32 %42)
  %44 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %41
  %49 = call i32 @msleep(i32 1)
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = call i64 @time_after(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %41, label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %61 = call i32 @REG_READ(i32 %60)
  %62 = load i32, i32* @CRT_HOTPLUG_MONITOR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CRT_HOTPLUG_MONITOR_NONE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %69 = load i32, i32* @CRT_HOTPLUG_INT_STATUS, align 4
  %70 = call i32 @REG_WRITE(i32 %68, i32 %69)
  %71 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @REG_WRITE(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

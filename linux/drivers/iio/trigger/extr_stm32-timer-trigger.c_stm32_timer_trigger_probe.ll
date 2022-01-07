; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_trigger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_trigger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.stm32_timer_trigger = type { i64*, i32, i32, i32, i32, %struct.device* }
%struct.stm32_timers = type { i32, i32, i32 }
%struct.stm32_timer_trigger_cfg = type { i32, i64** }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@triggers_table = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_timer_trigger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_timer_trigger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm32_timer_trigger*, align 8
  %6 = alloca %struct.stm32_timers*, align 8
  %7 = alloca %struct.stm32_timer_trigger_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.stm32_timers* @dev_get_drvdata(i32 %15)
  store %struct.stm32_timers* %16, %struct.stm32_timers** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @of_property_read_u32(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %119

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call %struct.TYPE_4__* @of_match_device(i32 %30, %struct.device* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.stm32_timer_trigger_cfg*
  store %struct.stm32_timer_trigger_cfg* %35, %struct.stm32_timer_trigger_cfg** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** @triggers_table, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp uge i32 %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.stm32_timer_trigger_cfg*, %struct.stm32_timer_trigger_cfg** %7, align 8
  %43 = getelementptr inbounds %struct.stm32_timer_trigger_cfg, %struct.stm32_timer_trigger_cfg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp uge i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %25
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %40
  %50 = load %struct.stm32_timer_trigger_cfg*, %struct.stm32_timer_trigger_cfg** %7, align 8
  %51 = getelementptr inbounds %struct.stm32_timer_trigger_cfg, %struct.stm32_timer_trigger_cfg* %50, i32 0, i32 1
  %52 = load i64**, i64*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call %struct.stm32_timer_trigger* @stm32_setup_counter_device(%struct.device* %60)
  store %struct.stm32_timer_trigger* %61, %struct.stm32_timer_trigger** %5, align 8
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.stm32_timer_trigger* @devm_kzalloc(%struct.device* %63, i32 32, i32 %64)
  store %struct.stm32_timer_trigger* %65, %struct.stm32_timer_trigger** %5, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %68 = icmp ne %struct.stm32_timer_trigger* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %119

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %75 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %74, i32 0, i32 5
  store %struct.device* %73, %struct.device** %75, align 8
  %76 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %77 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %80 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %82 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %85 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %87 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %90 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** @triggers_table, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %97 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.stm32_timer_trigger_cfg*, %struct.stm32_timer_trigger_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.stm32_timer_trigger_cfg, %struct.stm32_timer_trigger_cfg* %98, i32 0, i32 1
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %106 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %105, i32 0, i32 0
  store i64* %104, i64** %106, align 8
  %107 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %108 = call i32 @stm32_timer_detect_trgo2(%struct.stm32_timer_trigger* %107)
  %109 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %110 = call i32 @stm32_setup_iio_triggers(%struct.stm32_timer_trigger* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %72
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %119

115:                                              ; preds = %72
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.stm32_timer_trigger* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %113, %69, %46, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.stm32_timers* @dev_get_drvdata(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.stm32_timer_trigger* @stm32_setup_counter_device(%struct.device*) #1

declare dso_local %struct.stm32_timer_trigger* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @stm32_timer_detect_trgo2(%struct.stm32_timer_trigger*) #1

declare dso_local i32 @stm32_setup_iio_triggers(%struct.stm32_timer_trigger*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_timer_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

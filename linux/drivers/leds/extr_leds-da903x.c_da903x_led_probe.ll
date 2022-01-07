; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da903x.c_da903x_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da903x.c_da903x_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.led_info = type { i32, i32, i32 }
%struct.da903x_led = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@DA9030_ID_LED_1 = common dso_local global i32 0, align 4
@DA9030_ID_VIBRA = common dso_local global i32 0, align 4
@DA9034_ID_LED_1 = common dso_local global i32 0, align 4
@DA9034_ID_VIBRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid LED ID (%d) specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da903x_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to register LED %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da903x_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_info*, align 8
  %5 = alloca %struct.da903x_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = call %struct.led_info* @dev_get_platdata(%struct.TYPE_6__* %9)
  store %struct.led_info* %10, %struct.led_info** %4, align 8
  %11 = load %struct.led_info*, %struct.led_info** %4, align 8
  %12 = icmp eq %struct.led_info* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DA9030_ID_LED_1, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DA9030_ID_VIBRA, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DA9034_ID_LED_1, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DA9034_ID_VIBRA, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %100

40:                                               ; preds = %29, %21
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.da903x_led* @devm_kzalloc(%struct.TYPE_6__* %42, i32 28, i32 %43)
  store %struct.da903x_led* %44, %struct.da903x_led** %5, align 8
  %45 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %46 = icmp ne %struct.da903x_led* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %100

50:                                               ; preds = %40
  %51 = load %struct.led_info*, %struct.led_info** %4, align 8
  %52 = getelementptr inbounds %struct.led_info, %struct.led_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %55 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.led_info*, %struct.led_info** %4, align 8
  %58 = getelementptr inbounds %struct.led_info, %struct.led_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %61 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @da903x_led_set, align 4
  %64 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %65 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @LED_OFF, align 4
  %68 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %69 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %73 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.led_info*, %struct.led_info** %4, align 8
  %75 = getelementptr inbounds %struct.led_info, %struct.led_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %78 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %84 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %86 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.da903x_led*, %struct.da903x_led** %5, align 8
  %89 = getelementptr inbounds %struct.da903x_led, %struct.da903x_led* %88, i32 0, i32 1
  %90 = call i32 @devm_led_classdev_register(i32 %87, %struct.TYPE_5__* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %50
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 1
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dev_err(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %93, %47, %33, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.led_info* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.da903x_led* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_asic3_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-asic3.c_asic3_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.asic3_led = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@brightness_set = common dso_local global i32 0, align 4
@blink_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asic3_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.asic3_led*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.asic3_led* @dev_get_platdata(i32* %7)
  store %struct.asic3_led* %8, %struct.asic3_led** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @mfd_cell_enable(%struct.platform_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_3__* @devm_kzalloc(i32* %17, i32 4, i32 %18)
  %20 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %21 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %20, i32 0, i32 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %23 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %69

29:                                               ; preds = %15
  %30 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %31 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %34 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %38 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %39 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @brightness_set, align 4
  %43 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %44 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @blink_set, align 4
  %48 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %49 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %53 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %56 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.asic3_led*, %struct.asic3_led** %4, align 8
  %62 = getelementptr inbounds %struct.asic3_led, %struct.asic3_led* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @led_classdev_register(i32* %60, %struct.TYPE_3__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %29
  br label %69

68:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %67, %26
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call i32 @mfd_cell_disable(%struct.platform_device* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %68, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.asic3_led* @dev_get_platdata(i32*) #1

declare dso_local i32 @mfd_cell_enable(%struct.platform_device*) #1

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mfd_cell_disable(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

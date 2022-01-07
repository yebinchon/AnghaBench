; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_create_netxbig_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_create_netxbig_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.netxbig_led_platform_data = type { i32, i32, i32 }
%struct.netxbig_led_data = type { i64*, %struct.TYPE_2__, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netxbig_led = type { i64*, i32, i32, i32, i32, i32 }

@netxbig_led_blink_set = common dso_local global i32 0, align 4
@netxbig_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@NETXBIG_LED_SATA = common dso_local global i64 0, align 8
@NETXBIG_LED_INVALID_MODE = common dso_local global i64 0, align 8
@netxbig_led_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.netxbig_led_platform_data*, %struct.netxbig_led_data*, %struct.netxbig_led*)* @create_netxbig_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_netxbig_led(%struct.platform_device* %0, %struct.netxbig_led_platform_data* %1, %struct.netxbig_led_data* %2, %struct.netxbig_led* %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.netxbig_led_platform_data*, align 8
  %7 = alloca %struct.netxbig_led_data*, align 8
  %8 = alloca %struct.netxbig_led*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.netxbig_led_platform_data* %1, %struct.netxbig_led_platform_data** %6, align 8
  store %struct.netxbig_led_data* %2, %struct.netxbig_led_data** %7, align 8
  store %struct.netxbig_led* %3, %struct.netxbig_led** %8, align 8
  %9 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %10 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %9, i32 0, i32 8
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %6, align 8
  %13 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %16 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %18 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %21 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 4
  %23 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %24 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %27 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @netxbig_led_blink_set, align 4
  %30 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %31 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @netxbig_led_set, align 4
  %34 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %35 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %38 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @LED_OFF, align 4
  %40 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %41 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %44 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %47 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %50 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %51 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %56 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %59 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %61 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %64 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %63, i32 0, i32 0
  store i64* %62, i64** %64, align 8
  %65 = load %struct.netxbig_led*, %struct.netxbig_led** %8, align 8
  %66 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %69 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %6, align 8
  %71 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %74 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %6, align 8
  %76 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %79 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %81 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @NETXBIG_LED_SATA, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NETXBIG_LED_INVALID_MODE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %4
  %89 = load i32, i32* @netxbig_led_groups, align 4
  %90 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %91 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %4
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %7, align 8
  %97 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %96, i32 0, i32 1
  %98 = call i32 @devm_led_classdev_register(i32* %95, %struct.TYPE_2__* %97)
  ret i32 %98
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

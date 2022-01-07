; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_netdev_led_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_netdev_led_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_netdev_data = type { i32, i32 }

@NETDEV_LED_LINK = common dso_local global i32 0, align 4
@NETDEV_LED_TX = common dso_local global i32 0, align 4
@NETDEV_LED_RX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64, i32)* @netdev_led_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_led_attr_store(%struct.device* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.led_netdev_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_netdev_data* @led_trigger_get_drvdata(%struct.device* %14)
  store %struct.led_netdev_data* %15, %struct.led_netdev_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 128, label %26
    i32 129, label %28
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @NETDEV_LED_LINK, align 4
  store i32 %25, i32* %13, align 4
  br label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @NETDEV_LED_TX, align 4
  store i32 %27, i32* %13, align 4
  br label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @NETDEV_LED_RX, align 4
  store i32 %29, i32* %13, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %28, %26, %24
  %34 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %35 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %34, i32 0, i32 1
  %36 = call i32 @cancel_delayed_work_sync(i32* %35)
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %42 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %47 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.led_netdev_data*, %struct.led_netdev_data** %10, align 8
  %51 = call i32 @set_baseline_state(%struct.led_netdev_data* %50)
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %30, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.led_netdev_data* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_baseline_state(%struct.led_netdev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

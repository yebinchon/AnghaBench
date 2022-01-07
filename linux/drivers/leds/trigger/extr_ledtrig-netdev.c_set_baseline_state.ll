; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_set_baseline_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-netdev.c_set_baseline_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_netdev_data = type { i32, i32, %struct.led_classdev* }
%struct.led_classdev = type { i32, i32, i32 }

@NETDEV_LED_MODE_LINKUP = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@NETDEV_LED_LINK = common dso_local global i32 0, align 4
@NETDEV_LED_TX = common dso_local global i32 0, align 4
@NETDEV_LED_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_netdev_data*)* @set_baseline_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_baseline_state(%struct.led_netdev_data* %0) #0 {
  %2 = alloca %struct.led_netdev_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  store %struct.led_netdev_data* %0, %struct.led_netdev_data** %2, align 8
  %5 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %6 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %5, i32 0, i32 2
  %7 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  store %struct.led_classdev* %7, %struct.led_classdev** %4, align 8
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %16 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %19 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %24 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %27 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* @NETDEV_LED_MODE_LINKUP, align 4
  %30 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %31 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %36 = load i32, i32* @LED_OFF, align 4
  %37 = call i32 @led_set_brightness(%struct.led_classdev* %35, i32 %36)
  br label %71

38:                                               ; preds = %28
  %39 = load i32, i32* @NETDEV_LED_LINK, align 4
  %40 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %41 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %46 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %47 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @led_set_brightness(%struct.led_classdev* %45, i32 %48)
  br label %54

50:                                               ; preds = %38
  %51 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %52 = load i32, i32* @LED_OFF, align 4
  %53 = call i32 @led_set_brightness(%struct.led_classdev* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* @NETDEV_LED_TX, align 4
  %56 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %57 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %56, i32 0, i32 1
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @NETDEV_LED_RX, align 4
  %62 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %63 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %62, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %54
  %67 = load %struct.led_netdev_data*, %struct.led_netdev_data** %2, align 8
  %68 = getelementptr inbounds %struct.led_netdev_data, %struct.led_netdev_data* %67, i32 0, i32 0
  %69 = call i32 @schedule_delayed_work(i32* %68, i32 0)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %34
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @led_set_brightness(%struct.led_classdev*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

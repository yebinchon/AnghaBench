; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_init_mute_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_init_mute_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.elan_drvdata = type { %struct.led_classdev }
%struct.led_classdev = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"elan:red:mute\00", align 1
@elan_mute_led_get_brigtness = common dso_local global i32 0, align 4
@elan_mute_led_set_brigtness = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @elan_init_mute_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_init_mute_led(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.elan_drvdata*, align 8
  %4 = alloca %struct.led_classdev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.elan_drvdata* %6, %struct.elan_drvdata** %3, align 8
  %7 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %7, i32 0, i32 0
  store %struct.led_classdev* %8, %struct.led_classdev** %4, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @elan_mute_led_get_brigtness, align 4
  %12 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %13 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @elan_mute_led_set_brigtness, align 4
  %15 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %16 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @LED_ON, align 4
  %18 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %19 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %23 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 0
  %26 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %27 = call i32 @devm_led_classdev_register(i32* %25, %struct.led_classdev* %26)
  ret i32 %27
}

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

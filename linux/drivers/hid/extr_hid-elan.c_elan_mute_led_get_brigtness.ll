; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_mute_led_get_brigtness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_mute_led_get_brigtness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.elan_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @elan_mute_led_get_brigtness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_mute_led_get_brigtness(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.elan_drvdata*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %6 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.hid_device* @to_hid_device(%struct.device* %11)
  store %struct.hid_device* %12, %struct.hid_device** %4, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.elan_drvdata* %14, %struct.elan_drvdata** %5, align 8
  %15 = load %struct.elan_drvdata*, %struct.elan_drvdata** %5, align 8
  %16 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i32 }

@WACOM_QUIRK_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_wac_battery_usage_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_battery_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.wacom_features*, align 8
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.wacom* %12, %struct.wacom** %7, align 8
  %13 = load %struct.wacom*, %struct.wacom** %7, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 0
  store %struct.wacom_wac* %14, %struct.wacom_wac** %8, align 8
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 0
  store %struct.wacom_features* %16, %struct.wacom_features** %9, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wacom_equivalent_usage(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %28 [
    i32 130, label %22
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %3, %3, %3
  %23 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %24 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %25 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %3, %22
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

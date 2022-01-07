; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_2__, %struct.wacom_features }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.wacom_features = type { i32 }

@WACOM_QUIRK_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @wacom_wac_battery_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_battery_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.wacom_features*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.wacom* %14, %struct.wacom** %5, align 8
  %15 = load %struct.wacom*, %struct.wacom** %5, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 0
  store %struct.wacom_wac* %16, %struct.wacom_wac** %6, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 1
  store %struct.wacom_features* %18, %struct.wacom_features** %7, align 8
  %19 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %20 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %27 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %31 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %35 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %39 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %43 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @wacom_notify_battery(%struct.wacom_wac* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %25, %2
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_notify_battery(%struct.wacom_wac*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_query_battery_mileage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_query_battery_mileage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hidpp_report = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_GET_REGISTER = common dso_local global i32 0, align 4
@HIDPP_REG_BATTERY_MILEAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @hidpp10_query_battery_mileage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp10_query_battery_mileage(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.hidpp_report, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %7 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %8 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %9 = load i32, i32* @HIDPP_GET_REGISTER, align 4
  %10 = load i32, i32* @HIDPP_REG_BATTERY_MILEAGE, align 4
  %11 = call i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %7, i32 %8, i32 %9, i32 %10, i32* null, i32 0, %struct.hidpp_report* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %23 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hidpp10_battery_mileage_map_status(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %33 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %16
  %43 = phi i1 [ true, %16 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %46 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @hidpp_send_rap_command_sync(%struct.hidpp_device*, i32, i32, i32, i32*, i32, %struct.hidpp_report*) #1

declare dso_local i32 @hidpp10_battery_mileage_map_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

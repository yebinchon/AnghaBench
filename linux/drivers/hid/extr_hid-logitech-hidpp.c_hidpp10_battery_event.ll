; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_battery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_battery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.hidpp_report = type { i64, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@REPORT_ID_HIDPP_SHORT = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*, i32)* @hidpp10_battery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp10_battery_event(%struct.hidpp_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidpp_report*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.hidpp_report*
  store %struct.hidpp_report* %14, %struct.hidpp_report** %8, align 8
  %15 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %16 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REPORT_ID_HIDPP_SHORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

21:                                               ; preds = %3
  %22 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %23 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %60 [
    i32 128, label %26
    i32 129, label %43
  ]

26:                                               ; preds = %21
  %27 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %28 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %32 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hidpp10_battery_status_map_level(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %38 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hidpp10_battery_status_map_status(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %61

43:                                               ; preds = %21
  %44 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %45 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %51 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %55 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hidpp10_battery_mileage_map_status(i32 %58)
  store i32 %59, i32* %9, align 4
  br label %61

60:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %122

61:                                               ; preds = %43, %26
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %64 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %71 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %69, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %78 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %76, %80
  br label %82

82:                                               ; preds = %75, %68, %61
  %83 = phi i1 [ true, %68 ], [ true, %61 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %91 = icmp eq i32 %89, %90
  br label %92

92:                                               ; preds = %88, %82
  %93 = phi i1 [ true, %82 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %96 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %103 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %107 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %110 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %116 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @power_supply_changed(i64 %118)
  br label %120

120:                                              ; preds = %114, %100
  br label %121

121:                                              ; preds = %120, %92
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %60, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @hidpp10_battery_status_map_level(i32) #1

declare dso_local i32 @hidpp10_battery_status_map_status(i32) #1

declare dso_local i32 @hidpp10_battery_mileage_map_status(i32) #1

declare dso_local i32 @power_supply_changed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

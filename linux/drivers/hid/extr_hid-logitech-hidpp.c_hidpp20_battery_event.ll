; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_battery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_battery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64 }
%struct.hidpp_report = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@EVENT_BATTERY_LEVEL_STATUS_BROADCAST = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*, i32)* @hidpp20_battery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp20_battery_event(%struct.hidpp_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidpp_report*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.hidpp_report*
  store %struct.hidpp_report* %15, %struct.hidpp_report** %8, align 8
  %16 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %17 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %21 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %27 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EVENT_BATTERY_LEVEL_STATUS_BROADCAST, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %103

33:                                               ; preds = %25
  %34 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %35 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hidpp20_batterylevel_map_status_capacity(i32 %37, i32* %10, i32* %11, i32* %12)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i1 [ true, %33 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %50 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %54 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %61 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %68 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %66, %70
  br label %72

72:                                               ; preds = %65, %58, %46
  %73 = phi i1 [ true, %58 ], [ true, %46 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %80 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %84 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %88 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 4
  %90 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %91 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %77
  %96 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %97 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @power_supply_changed(i64 %99)
  br label %101

101:                                              ; preds = %95, %77
  br label %102

102:                                              ; preds = %101, %72
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %32
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @hidpp20_batterylevel_map_status_capacity(i32, i32*, i32*, i32*) #1

declare dso_local i32 @power_supply_changed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

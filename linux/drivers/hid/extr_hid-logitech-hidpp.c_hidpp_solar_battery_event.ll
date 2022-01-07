; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_solar_battery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_solar_battery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }
%struct.hidpp_report = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32* }

@EVENT_SOLAR_BATTERY_BROADCAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*, i32)* @hidpp_solar_battery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_solar_battery_event(%struct.hidpp_device* %0, i32* %1, i32 %2) #0 {
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
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %20 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %24 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @EVENT_SOLAR_BATTERY_BROADCAST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4
  br label %126

39:                                               ; preds = %35, %32, %28
  %40 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %41 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %70 [
    i32 129, label %47
    i32 128, label %69
  ]

47:                                               ; preds = %39
  %48 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %49 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.hidpp_report*, %struct.hidpp_report** %8, align 8
  %56 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %54, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 200
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %65, i32* %11, align 4
  br label %68

66:                                               ; preds = %47
  %67 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %82

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %39, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %73 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %78, i32* %11, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %68
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 100
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %89 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %93 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %100 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %98, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %97, %87
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %107 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %111 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %114 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %104
  %119 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %120 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @power_supply_changed(i64 %122)
  br label %124

124:                                              ; preds = %118, %104
  br label %125

125:                                              ; preds = %124, %97
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %38
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @power_supply_changed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

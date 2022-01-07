; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_query_battery_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_query_battery_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HIDPP_PAGE_BATTERY_LEVEL_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @hidpp20_query_battery_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp20_query_battery_info(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %10 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %11 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %17 = load i32, i32* @HIDPP_PAGE_BATTERY_LEVEL_STATUS, align 4
  %18 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %19 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %16, i32 %17, i32* %20, i32* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %75

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %29 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %30 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hidpp20_batterylevel_get_battery_capacity(%struct.hidpp_device* %28, i32 %32, i32* %6, i32* %7, i32* %8, i32* %9)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %75

38:                                               ; preds = %27
  %39 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %40 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %41 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hidpp20_batterylevel_get_battery_info(%struct.hidpp_device* %39, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %52 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %56 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %60 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %68 = icmp eq i32 %66, %67
  br label %69

69:                                               ; preds = %65, %49
  %70 = phi i1 [ true, %49 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %73 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %47, %36, %24
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #1

declare dso_local i32 @hidpp20_batterylevel_get_battery_capacity(%struct.hidpp_device*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hidpp20_batterylevel_get_battery_info(%struct.hidpp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

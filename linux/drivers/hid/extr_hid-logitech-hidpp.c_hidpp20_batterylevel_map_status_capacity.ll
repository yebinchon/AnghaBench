; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_batterylevel_map_status_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp20_batterylevel_map_status_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @hidpp20_batterylevel_map_status_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp20_batterylevel_map_status_capacity(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %40 [
    i32 0, label %23
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
    i32 4, label %38
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hidpp_map_battery_level(i32 %26)
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %30, i32* %9, align 4
  br label %42

31:                                               ; preds = %4
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %32, i32* %9, align 4
  br label %42

33:                                               ; preds = %4
  %34 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 100, i32* %37, align 4
  br label %42

38:                                               ; preds = %4
  %39 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %38, %33, %31, %29, %23
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @hidpp_map_battery_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

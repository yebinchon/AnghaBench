; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_map_battery_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_map_battery_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hidpp_map_battery_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_map_battery_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 11
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  store i32 %7, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 30
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 81
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %16, %11, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

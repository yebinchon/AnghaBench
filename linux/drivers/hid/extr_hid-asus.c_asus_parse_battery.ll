; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_parse_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_parse_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_drvdata = type { i32, i32 }

@BATTERY_LEVEL_MAX = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_drvdata*, i32*, i32)* @asus_parse_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_parse_battery(%struct.asus_drvdata* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.asus_drvdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.asus_drvdata* %0, %struct.asus_drvdata** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 100
  %18 = load i64, i64* @BATTERY_LEVEL_MAX, align 8
  %19 = trunc i64 %18 to i32
  %20 = sdiv i32 %17, %19
  %21 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %22 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %29 [
    i32 130, label %24
    i32 128, label %26
    i32 129, label %28
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %25, i32* %9, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %27, i32* %9, align 4
  br label %31

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %26, %24
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %34 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

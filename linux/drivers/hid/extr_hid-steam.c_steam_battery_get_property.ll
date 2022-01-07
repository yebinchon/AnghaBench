; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.steam_device = type { i32, i32, i32 }

@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @steam_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steam_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.steam_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %13 = call %struct.steam_device* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.steam_device* %13, %struct.steam_device** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.steam_device*, %struct.steam_device** %7, align 8
  %15 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %14, i32 0, i32 2
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.steam_device*, %struct.steam_device** %7, align 8
  %19 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.steam_device*, %struct.steam_device** %7, align 8
  %22 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.steam_device*, %struct.steam_device** %7, align 8
  %25 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %45 [
    i32 130, label %29
    i32 129, label %32
    i32 128, label %36
    i32 131, label %41
  ]

29:                                               ; preds = %3
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 1, i32* %31, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %48

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %41, %36, %32, %29
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.steam_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

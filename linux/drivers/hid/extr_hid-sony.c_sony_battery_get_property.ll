; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sony_sc = type { i32, i32, i32, i32 }

@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sony_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.sony_sc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %14 = call %struct.sony_sc* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.sony_sc* %14, %struct.sony_sc** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %16 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %15, i32 0, i32 3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %20 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %23 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %26 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %29 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %28, i32 0, i32 3
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %67 [
    i32 130, label %33
    i32 129, label %36
    i32 131, label %40
    i32 128, label %44
  ]

33:                                               ; preds = %3
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 1, i32* %35, align 4
  br label %70

36:                                               ; preds = %3
  %37 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %70

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  store i32 %41, i32* %43, align 4
  br label %70

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i32*
  store i32 %48, i32* %50, align 4
  br label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %54, %51
  %62 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %47
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %66, %40, %36, %33
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local %struct.sony_sc* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

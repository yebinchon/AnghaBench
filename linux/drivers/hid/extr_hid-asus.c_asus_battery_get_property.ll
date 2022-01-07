; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.asus_drvdata = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@QUERY_MIN_INTERVAL = common dso_local global i64 0, align 8
@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @asus_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.asus_drvdata*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.asus_drvdata* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.asus_drvdata* %11, %struct.asus_drvdata** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %64 [
    i32 128, label %13
    i32 132, label %13
    i32 130, label %49
    i32 129, label %52
    i32 131, label %56
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %15 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i32 @time_before(i64 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* @QUERY_MIN_INTERVAL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %25 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %27 = call i32 @asus_battery_query(%struct.asus_drvdata* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %38 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %44 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %67

49:                                               ; preds = %3
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 1, i32* %51, align 4
  br label %67

52:                                               ; preds = %3
  %53 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %67

56:                                               ; preds = %3
  %57 = load %struct.asus_drvdata*, %struct.asus_drvdata** %8, align 8
  %58 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %3
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %56, %52, %49, %48
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %30
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.asus_drvdata* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @asus_battery_query(%struct.asus_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

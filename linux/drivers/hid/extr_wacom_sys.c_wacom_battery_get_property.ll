; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wacom_battery = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@WACOM_POWER_SUPPLY_STATUS_AUTO = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wacom_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.wacom_battery*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.wacom_battery* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.wacom_battery* %10, %struct.wacom_battery** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %89 [
    i32 131, label %12
    i32 130, label %21
    i32 129, label %27
    i32 132, label %31
    i32 128, label %37
  ]

12:                                               ; preds = %3
  %13 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %14 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %23 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %92

27:                                               ; preds = %3
  %28 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %92

31:                                               ; preds = %3
  %32 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %33 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %92

37:                                               ; preds = %3
  %38 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %39 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WACOM_POWER_SUPPLY_STATUS_AUTO, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %45 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %88

49:                                               ; preds = %37
  %50 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %51 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %87

58:                                               ; preds = %49
  %59 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %60 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 100
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %65 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %86

72:                                               ; preds = %63, %58
  %73 = load %struct.wacom_battery*, %struct.wacom_battery** %7, align 8
  %74 = getelementptr inbounds %struct.wacom_battery, %struct.wacom_battery* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %79 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %80 = bitcast %union.power_supply_propval* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %54
  br label %88

88:                                               ; preds = %87, %43
  br label %92

89:                                               ; preds = %3
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %88, %31, %27, %21, %12
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.wacom_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

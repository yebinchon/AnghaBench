; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.asus_drvdata = type { i32, i32*, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }
%struct.power_supply_config = type { %struct.asus_drvdata* }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@asus_battery_props = common dso_local global i32 0, align 4
@asus_battery_get_property = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"asus-keyboard-%s-battery\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to register battery device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @asus_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_battery_probe(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.asus_drvdata*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.asus_drvdata* %8, %struct.asus_drvdata** %4, align 8
  %9 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  %10 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  store %struct.asus_drvdata* %10, %struct.asus_drvdata** %9, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %12 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %14 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %17 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @asus_battery_props, align 4
  %19 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %20 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @asus_battery_props, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %25 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @asus_battery_get_property, align 4
  %28 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %29 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %32 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %33 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %36 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strlen(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %48 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %54

50:                                               ; preds = %1
  %51 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 0
  %53 = call i32 @dev_name(i32* %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %49, %46 ], [ %53, %50 ]
  %56 = call i32 @devm_kasprintf(i32* %39, i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %58 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %61 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %102

68:                                               ; preds = %54
  %69 = load i32, i32* @jiffies, align 4
  %70 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %71 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %73 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %72, i32 0, i32 0
  %74 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %75 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %74, i32 0, i32 2
  %76 = call i32* @devm_power_supply_register(i32* %73, %struct.TYPE_2__* %75, %struct.power_supply_config* %5)
  %77 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %78 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %80 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %68
  %85 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %86 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %90 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %92 = call i32 @hid_err(%struct.hid_device* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %102

94:                                               ; preds = %68
  %95 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %96 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %99 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %98, i32 0, i32 0
  %100 = call i32 @power_supply_powers(i32* %97, i32* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %94, %84, %65
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32* @devm_power_supply_register(i32*, %struct.TYPE_2__*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @power_supply_powers(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.hid_device* }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }
%struct.hid_device = type { i32 }
%struct.power_supply_config = type { %struct.sony_sc* }

@.str = private unnamed_addr constant [32 x i8] c"sony_controller_battery_%pMR_%i\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"sony_controller_battery_%pMR\00", align 1
@sony_battery_props = common dso_local global i32 0, align 4
@sony_battery_get_property = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to register battery device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_sc*, i32)* @sony_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_battery_probe(%struct.sony_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sony_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %6, align 8
  %14 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  %15 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  store %struct.sony_sc* %15, %struct.sony_sc** %14, align 8
  %16 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %17 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %16, i32 0, i32 5
  %18 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  store %struct.hid_device* %18, %struct.hid_device** %8, align 8
  %19 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %20 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %19, i32 0, i32 0
  store i32 100, i32* %20, align 8
  %21 = load i32, i32* @sony_battery_props, align 4
  %22 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %23 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @sony_battery_props, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %28 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @sony_battery_get_property, align 4
  %31 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %32 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %35 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %36 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %39 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %46 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %49 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @devm_kasprintf(i32* %42, i32 %43, i8* %44, i32 %47, i32 %50)
  %52 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %53 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %56 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %2
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %2
  %64 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %65 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %64, i32 0, i32 0
  %66 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %67 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %66, i32 0, i32 2
  %68 = call i32 @devm_power_supply_register(i32* %65, %struct.TYPE_2__* %67, %struct.power_supply_config* %7)
  %69 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %70 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %72 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %63
  %77 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %78 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %82 = call i32 @hid_err(%struct.hid_device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %91

84:                                               ; preds = %63
  %85 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %86 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %89 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %88, i32 0, i32 0
  %90 = call i32 @power_supply_powers(i32 %87, i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %84, %76, %60
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @devm_power_supply_register(i32*, %struct.TYPE_2__*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @power_supply_powers(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

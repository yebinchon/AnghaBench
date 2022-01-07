; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.power_supply_config = type { %struct.wiimote_data* }

@wiimod_battery_props = common dso_local global i32 0, align 4
@wiimod_battery_get_property = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"wiimote_battery_%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot register battery device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_battery_probe(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimod_ops*, align 8
  %5 = alloca %struct.wiimote_data*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %4, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %5, align 8
  %8 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  %9 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  store %struct.wiimote_data* %9, %struct.wiimote_data** %8, align 8
  %10 = load i32, i32* @wiimod_battery_props, align 4
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %12 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @wiimod_battery_props, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %17 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @wiimod_battery_get_property, align 4
  %20 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %21 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %24 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %25 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %28 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %32 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @kasprintf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %38 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %41 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %91

48:                                               ; preds = %2
  %49 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %50 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %54 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %53, i32 0, i32 0
  %55 = call i32 @power_supply_register(i32* %52, %struct.TYPE_3__* %54, %struct.power_supply_config* %6)
  %56 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %57 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %59 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %65 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @hid_err(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %69 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %7, align 4
  br label %81

72:                                               ; preds = %48
  %73 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %74 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %77 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @power_supply_powers(i32 %75, i32* %79)
  store i32 0, i32* %3, align 4
  br label %91

81:                                               ; preds = %63
  %82 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %83 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %88 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %72, %45
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @power_supply_register(i32*, %struct.TYPE_3__*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @hid_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @power_supply_powers(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

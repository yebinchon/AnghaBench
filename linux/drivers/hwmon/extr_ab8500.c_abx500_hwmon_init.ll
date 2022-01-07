; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_abx500_hwmon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_abx500_hwmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_temp = type { %struct.TYPE_6__, i32, i32*, %struct.ab8500_temp*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32 }
%struct.ab8500_temp = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ab8500-gpadc.0\00", align 1
@ab8500_thermal_power_off = common dso_local global i32 0, align 4
@THERMAL_VCC = common dso_local global i32 0, align 4
@PULL_UP_RESISTOR = common dso_local global i32 0, align 4
@ab8500_temp_tbl_a_thermistor = common dso_local global i32 0, align 4
@ab8500_temp_tbl_a_size = common dso_local global i32 0, align 4
@ADC_AUX1 = common dso_local global i32 0, align 4
@ADC_AUX2 = common dso_local global i32 0, align 4
@BTEMP_BALL = common dso_local global i32 0, align 4
@BAT_CTRL = common dso_local global i32 0, align 4
@NUM_MONITORED_SENSORS = common dso_local global i32 0, align 4
@ab8500_read_sensor = common dso_local global i32 0, align 4
@ab8500_temp_irq_handler = common dso_local global i32 0, align 4
@ab8500_show_name = common dso_local global i32 0, align 4
@ab8500_show_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_hwmon_init(%struct.abx500_temp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abx500_temp*, align 8
  %4 = alloca %struct.ab8500_temp*, align 8
  store %struct.abx500_temp* %0, %struct.abx500_temp** %3, align 8
  %5 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %6 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ab8500_temp* @devm_kzalloc(i32* %8, i32 28, i32 %9)
  store %struct.ab8500_temp* %10, %struct.ab8500_temp** %4, align 8
  %11 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %12 = icmp ne %struct.ab8500_temp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = call i32 @ab8500_gpadc_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %19 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %21 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %27 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %110

30:                                               ; preds = %16
  %31 = call i32 (...) @ab8500_btemp_get()
  %32 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %33 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %35 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %41 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %110

44:                                               ; preds = %30
  %45 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %46 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %45, i32 0, i32 1
  %47 = load i32, i32* @ab8500_thermal_power_off, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  %49 = load i32, i32* @THERMAL_VCC, align 4
  %50 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %51 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @PULL_UP_RESISTOR, align 4
  %54 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %55 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @ab8500_temp_tbl_a_thermistor, align 4
  %58 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %59 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @ab8500_temp_tbl_a_size, align 4
  %62 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %63 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ab8500_temp*, %struct.ab8500_temp** %4, align 8
  %66 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %67 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %66, i32 0, i32 3
  store %struct.ab8500_temp* %65, %struct.ab8500_temp** %67, align 8
  %68 = load i32, i32* @ADC_AUX1, align 4
  %69 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %70 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @ADC_AUX2, align 4
  %74 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %75 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @BTEMP_BALL, align 4
  %79 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %80 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @BAT_CTRL, align 4
  %84 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %85 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @NUM_MONITORED_SENSORS, align 4
  %89 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %90 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @ab8500_read_sensor, align 4
  %92 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %93 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @ab8500_temp_irq_handler, align 4
  %96 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %97 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @ab8500_show_name, align 4
  %100 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %101 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ab8500_show_label, align 4
  %104 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %105 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.abx500_temp*, %struct.abx500_temp** %3, align 8
  %108 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %44, %39, %25, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.ab8500_temp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ab8500_gpadc_get(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ab8500_btemp_get(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

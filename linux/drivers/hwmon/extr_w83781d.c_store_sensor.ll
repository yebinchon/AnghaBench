; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_store_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_store_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.w83781d_data = type { i64*, i32 }

@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.w83781d_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.w83781d_data* %19, %struct.w83781d_data** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %13)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %138

29:                                               ; preds = %4
  %30 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %31 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i64, i64* %13, align 8
  switch i64 %33, label %128 [
    i64 1, label %34
    i64 2, label %68
    i64 128, label %103
    i64 4, label %106
  ]

34:                                               ; preds = %29
  %35 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %36 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %37 = call i32 @w83781d_read_value(%struct.w83781d_data* %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %39 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** @BIT_SCFG1, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = call i32 @w83781d_write_value(%struct.w83781d_data* %38, i32 %39, i32 %46)
  %48 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %49 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %50 = call i32 @w83781d_read_value(%struct.w83781d_data* %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %52 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** @BIT_SCFG2, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  %60 = call i32 @w83781d_write_value(%struct.w83781d_data* %51, i32 %52, i32 %59)
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %63 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  br label %132

68:                                               ; preds = %29
  %69 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %70 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %71 = call i32 @w83781d_read_value(%struct.w83781d_data* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %73 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** @BIT_SCFG1, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %74, %79
  %81 = call i32 @w83781d_write_value(%struct.w83781d_data* %72, i32 %73, i32 %80)
  %82 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %83 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %84 = call i32 @w83781d_read_value(%struct.w83781d_data* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %86 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** @BIT_SCFG2, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %87, %93
  %95 = call i32 @w83781d_write_value(%struct.w83781d_data* %85, i32 %86, i32 %94)
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %98 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %96, i64* %102, align 8
  br label %132

103:                                              ; preds = %29
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_warn(%struct.device* %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %106

106:                                              ; preds = %29, %103
  %107 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %108 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %109 = call i32 @w83781d_read_value(%struct.w83781d_data* %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %111 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** @BIT_SCFG1, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %112, %118
  %120 = call i32 @w83781d_write_value(%struct.w83781d_data* %110, i32 %111, i32 %119)
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %123 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %121, i64* %127, align 8
  br label %132

128:                                              ; preds = %29
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %128, %106, %68, %34
  %133 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %134 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i64, i64* %9, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %132, %27
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i64*, i32 }
%struct.w83627ehf_sio_data = type { i64 }
%struct.sensor_device_attribute = type { i32 }

@nct6775 = common dso_local global i64 0, align 8
@nct6776 = common dso_local global i64 0, align 8
@NCT6775_REG_FAN_MODE = common dso_local global i32* null, align 8
@W83627EHF_REG_TOLERANCE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_tolerance(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca %struct.w83627ehf_sio_data*, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.w83627ehf_data* %18, %struct.w83627ehf_data** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %19)
  store %struct.w83627ehf_sio_data* %20, %struct.w83627ehf_sio_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute* %22, %struct.sensor_device_attribute** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %15)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %129

32:                                               ; preds = %4
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @DIV_ROUND_CLOSEST(i64 %33, i32 1000)
  %35 = call i64 @clamp_val(i32 %34, i32 0, i32 15)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %37 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %40 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @nct6775, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %46 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @nct6776, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44, %32
  %51 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %52 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @nct6776, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* %15, align 8
  %58 = icmp sgt i64 %57, 7
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 7, i64* %15, align 8
  br label %60

60:                                               ; preds = %59, %56, %50
  %61 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %62 = load i32*, i32** @NCT6775_REG_FAN_MODE, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %61, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 240
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %15, align 8
  %72 = or i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %75 = load i32*, i32** @NCT6775_REG_FAN_MODE, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %74, i32 %79, i32 %80)
  br label %116

82:                                               ; preds = %44
  %83 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %84 = load i32*, i32** @W83627EHF_REG_TOLERANCE, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %83, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %15, align 8
  %97 = shl i64 %96, 4
  %98 = or i64 %95, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  br label %107

100:                                              ; preds = %82
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 240
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %15, align 8
  %105 = or i64 %103, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %100, %92
  %108 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %109 = load i32*, i32** @W83627EHF_REG_TOLERANCE, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %108, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %60
  %117 = load i64, i64* %15, align 8
  %118 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %119 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  %124 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %125 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i64, i64* %9, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %116, %30
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

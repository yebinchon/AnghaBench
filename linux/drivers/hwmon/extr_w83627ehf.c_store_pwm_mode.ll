; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i64*, i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.w83627ehf_sio_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@nct6776 = common dso_local global i64 0, align 8
@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627EHF_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca %struct.w83627ehf_sio_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.w83627ehf_data* %18, %struct.w83627ehf_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %11, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %21)
  store %struct.w83627ehf_sio_data* %22, %struct.w83627ehf_sio_data** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %105

32:                                               ; preds = %4
  %33 = load i64, i64* %14, align 8
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %105

38:                                               ; preds = %32
  %39 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %12, align 8
  %40 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @nct6776, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %105

53:                                               ; preds = %47, %44, %38
  %54 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %55 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %58 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %57, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %66 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load i32*, i32** @W83627EHF_PWM_MODE_SHIFT, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %16, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %53
  %83 = load i32*, i32** @W83627EHF_PWM_MODE_SHIFT, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %82, %53
  %92 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %93 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %92, i32 %97, i32 %98)
  %100 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %101 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %91, %50, %35, %30
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

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

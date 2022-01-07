; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i64*, i64*, i32 }
%struct.w83627ehf_sio_data = type { i64 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@nct6776 = common dso_local global i64 0, align 8
@nct6775 = common dso_local global i64 0, align 8
@NCT6775_REG_FAN_MODE = common dso_local global i32* null, align 8
@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627EHF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca %struct.w83627ehf_sio_data*, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
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
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %154

32:                                               ; preds = %4
  %33 = load i64, i64* %14, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %36, 4
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %41 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %39, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38, %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %154

51:                                               ; preds = %38, %35
  %52 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %53 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @nct6776, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %154

63:                                               ; preds = %57, %51
  %64 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %65 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %64, i32 0, i32 2
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %69 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  %74 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %75 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @nct6775, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %63
  %80 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %11, align 8
  %81 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @nct6776, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79, %63
  %86 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %87 = load i32*, i32** @NCT6775_REG_FAN_MODE, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %86, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = and i32 %93, 15
  store i32 %94, i32* %16, align 4
  %95 = load i64, i64* %14, align 8
  %96 = sub i64 %95, 1
  %97 = shl i64 %96, 4
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = or i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %103 = load i32*, i32** @NCT6775_REG_FAN_MODE, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %102, i32 %107, i32 %108)
  br label %148

110:                                              ; preds = %79
  %111 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %112 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %111, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 3, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %16, align 4
  %127 = load i64, i64* %14, align 8
  %128 = sub i64 %127, 1
  %129 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  %135 = shl i64 %128, %134
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = or i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %16, align 4
  %140 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %141 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %140, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %110, %85
  %149 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %150 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %149, i32 0, i32 2
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i64, i64* %9, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %60, %48, %30
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

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

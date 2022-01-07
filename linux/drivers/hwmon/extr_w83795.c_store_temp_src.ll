; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@tss_map = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_src(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83795_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.w83795_data* @w83795_update_pwm_config(%struct.device* %19)
  store %struct.w83795_data* %20, %struct.w83795_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %12, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %16, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @kstrtoul(i8* %29, i32 10, i64* %15)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* %15, align 8
  %34 = icmp ult i64 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %15, align 8
  %37 = icmp ugt i64 %36, 14
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32, %4
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %117

41:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i64**, i64*** @tss_map, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = sub i64 %55, 1
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %42

63:                                               ; preds = %58, %42
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %117

69:                                               ; preds = %63
  %70 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %71 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %80 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 15
  store i32 %85, i32* %83, align 4
  br label %94

86:                                               ; preds = %69
  %87 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %88 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 240
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %76
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %97 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %95
  store i32 %102, i32* %100, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @W83795_REG_TSS(i64 %104)
  %106 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %107 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @w83795_write(%struct.i2c_client* %103, i32 %105, i32 %111)
  %113 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %114 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i64, i64* %9, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %94, %66, %38
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @w83795_update_pwm_config(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @W83795_REG_TSS(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_temp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_temp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i64*, i32 }
%struct.sensor_device_attribute_2 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@W83793_REG_TEMP_MODE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_temp_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83793_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.w83793_data* %21, %struct.w83793_data** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  store %struct.sensor_device_attribute_2* %23, %struct.sensor_device_attribute_2** %12, align 8
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 4
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 2, %35
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %38, 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @kstrtoul(i8* %43, i32 10, i64* %16)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %5, align 4
  br label %144

49:                                               ; preds = %40
  %50 = load i64, i64* %16, align 8
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  %57 = sub i64 %56, 3
  store i64 %57, i64* %16, align 8
  br label %81

58:                                               ; preds = %52, %49
  %59 = load i64, i64* %16, align 8
  %60 = icmp eq i64 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %70, label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* %16, align 8
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %77

70:                                               ; preds = %67, %61
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %16, align 8
  br label %80

77:                                               ; preds = %67, %64
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %144

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 4
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 1
  store i32 %85, i32* %13, align 4
  %86 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %87 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %90 = load i32*, i32** @W83793_REG_TEMP_MODE, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @w83793_read_value(%struct.i2c_client* %89, i32 %94)
  %96 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %97 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %95, i64* %101, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %15, align 8
  %104 = shl i64 %102, %103
  %105 = xor i64 %104, -1
  %106 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %107 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = and i64 %112, %105
  store i64 %113, i64* %111, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %15, align 8
  %116 = shl i64 %114, %115
  %117 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %118 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %123, %116
  store i64 %124, i64* %122, align 8
  %125 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %126 = load i32*, i32** @W83793_REG_TEMP_MODE, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %132 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @w83793_write_value(%struct.i2c_client* %125, i32 %130, i64 %137)
  %139 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %140 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %139, i32 0, i32 1
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i64, i64* %9, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %81, %77, %47
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

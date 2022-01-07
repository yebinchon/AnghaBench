; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32*, i32 }

@W83792D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83792D_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %10, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.i2c_client* @to_i2c_client(%struct.device* %25)
  store %struct.i2c_client* %26, %struct.i2c_client** %12, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %28 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %27)
  store %struct.w83792d_data* %28, %struct.w83792d_data** %13, align 8
  store i32 0, i32* %15, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %17)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %5, align 4
  br label %148

35:                                               ; preds = %4
  %36 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %37 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %40 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %47 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DIV_FROM_REG(i32 %52)
  %54 = call i64 @FAN_FROM_REG(i32 %45, i32 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @DIV_TO_REG(i64 %55)
  %57 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %58 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %64 = load i32*, i32** @W83792D_REG_FAN_DIV, align 8
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @w83792d_read_value(%struct.i2c_client* %63, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 143, i32 248
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %35
  %82 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %83 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 4
  %90 = and i32 %89, 112
  br label %100

91:                                               ; preds = %35
  %92 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %93 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 7
  br label %100

100:                                              ; preds = %91, %81
  %101 = phi i32 [ %90, %81 ], [ %99, %91 ]
  store i32 %101, i32* %16, align 4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %103 = load i32*, i32** @W83792D_REG_FAN_DIV, align 8
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @w83792d_write_value(%struct.i2c_client* %102, i32 %108, i32 %111)
  %113 = load i64, i64* %14, align 8
  %114 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %115 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DIV_FROM_REG(i32 %120)
  %122 = call i32 @FAN_TO_REG(i64 %113, i32 %121)
  %123 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %124 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %130 = load i32*, i32** @W83792D_REG_FAN_MIN, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %136 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @w83792d_write_value(%struct.i2c_client* %129, i32 %134, i32 %141)
  %143 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %144 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i64, i64* %9, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %100, %33
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

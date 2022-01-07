; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adm1026_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADM1026_REG_FAN_DIV_0_3 = common dso_local global i32 0, align 4
@ADM1026_REG_FAN_DIV_4_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.adm1026_data*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %23)
  store %struct.adm1026_data* %24, %struct.adm1026_data** %12, align 8
  %25 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %26 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %25, i32 0, i32 2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %13, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtol(i8* %28, i32 10, i64* %14)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %5, align 4
  br label %156

34:                                               ; preds = %4
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @DIV_TO_REG(i64 %35)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %38 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %41 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @DIV_FROM_REG(i32 %47)
  %49 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %50 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %96

57:                                               ; preds = %34
  %58 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %59 = load i32, i32* @ADM1026_REG_FAN_DIV_0_3, align 4
  %60 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %61 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @DIV_TO_REG(i64 %65)
  %67 = shl i32 %66, 0
  %68 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %69 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @DIV_TO_REG(i64 %73)
  %75 = shl i32 %74, 2
  %76 = or i32 %67, %75
  %77 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %78 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @DIV_TO_REG(i64 %82)
  %84 = shl i32 %83, 4
  %85 = or i32 %76, %84
  %86 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %87 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @DIV_TO_REG(i64 %91)
  %93 = shl i32 %92, 6
  %94 = or i32 %85, %93
  %95 = call i32 @adm1026_write_value(%struct.i2c_client* %58, i32 %59, i32 %94)
  br label %135

96:                                               ; preds = %34
  %97 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %98 = load i32, i32* @ADM1026_REG_FAN_DIV_4_7, align 4
  %99 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %100 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @DIV_TO_REG(i64 %104)
  %106 = shl i32 %105, 0
  %107 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %108 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 @DIV_TO_REG(i64 %112)
  %114 = shl i32 %113, 2
  %115 = or i32 %106, %114
  %116 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %117 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 @DIV_TO_REG(i64 %121)
  %123 = shl i32 %122, 4
  %124 = or i32 %115, %123
  %125 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %126 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 7
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @DIV_TO_REG(i64 %130)
  %132 = shl i32 %131, 6
  %133 = or i32 %124, %132
  %134 = call i32 @adm1026_write_value(%struct.i2c_client* %97, i32 %98, i32 %133)
  br label %135

135:                                              ; preds = %96, %57
  %136 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %137 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @fixup_fan_min(%struct.device* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %135
  %151 = load %struct.adm1026_data*, %struct.adm1026_data** %12, align 8
  %152 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i64, i64* %9, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %150, %32
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @fixup_fan_min(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

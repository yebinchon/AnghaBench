; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83l786ng_data = type { i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83l786ng_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.w83l786ng_data* @dev_get_drvdata(%struct.device* %24)
  store %struct.w83l786ng_data* %25, %struct.w83l786ng_data** %11, align 8
  %26 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %27 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %26, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  store %struct.i2c_client* %28, %struct.i2c_client** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %18)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %5, align 4
  br label %122

35:                                               ; preds = %4
  %36 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %37 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %40 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %47 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DIV_FROM_REG(i32 %52)
  %54 = call i64 @FAN_FROM_REG(i32 %45, i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @DIV_TO_REG(i64 %55)
  %57 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %58 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %66 [
    i32 0, label %64
    i32 1, label %65
  ]

64:                                               ; preds = %35
  store i32 248, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %66

65:                                               ; preds = %35
  store i32 143, i32* %16, align 4
  store i32 4, i32* %17, align 4
  br label %66

66:                                               ; preds = %35, %65, %64
  %67 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %68 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %69 = call i32 @w83l786ng_read_value(%struct.i2c_client* %67, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %73 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %16, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  store i32 %83, i32* %14, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %85 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @w83l786ng_write_value(%struct.i2c_client* %84, i32 %85, i32 %88)
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %92 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @DIV_FROM_REG(i32 %97)
  %99 = call i32 @FAN_TO_REG(i64 %90, i32 %98)
  %100 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %101 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @W83L786NG_REG_FAN_MIN(i32 %107)
  %109 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %110 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @w83l786ng_write_value(%struct.i2c_client* %106, i32 %108, i32 %115)
  %117 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %118 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %117, i32 0, i32 2
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %66, %33
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83l786ng_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83l786ng_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

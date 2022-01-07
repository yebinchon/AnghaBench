; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm87_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM87_REG_VID_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @dev_get_drvdata(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.lm87_data* %20, %struct.lm87_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %141

31:                                               ; preds = %4
  %32 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %33 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %36 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %43 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FAN_DIV_FROM_REG(i32 %48)
  %50 = call i64 @FAN_FROM_REG(i32 %41, i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %13, align 8
  switch i64 %51, label %80 [
    i64 1, label %52
    i64 2, label %59
    i64 4, label %66
    i64 8, label %73
  ]

52:                                               ; preds = %31
  %53 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %54 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  br label %86

59:                                               ; preds = %31
  %60 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %61 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  br label %86

66:                                               ; preds = %31
  %67 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %68 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 2, i32* %72, align 4
  br label %86

73:                                               ; preds = %31
  %74 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %75 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 3, i32* %79, align 4
  br label %86

80:                                               ; preds = %31
  %81 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %82 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %141

86:                                               ; preds = %73, %66, %59, %52
  %87 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %88 = load i32, i32* @LM87_REG_VID_FAN_DIV, align 4
  %89 = call i32 @lm87_read_value(%struct.i2c_client* %87, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %111 [
    i32 0, label %91
    i32 1, label %101
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = and i32 %92, 207
  %94 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %95 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 4
  %100 = or i32 %93, %99
  store i32 %100, i32* %16, align 4
  br label %111

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4
  %103 = and i32 %102, 63
  %104 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %105 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 6
  %110 = or i32 %103, %109
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %86, %101, %91
  %112 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %113 = load i32, i32* @LM87_REG_VID_FAN_DIV, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @lm87_write_value(%struct.i2c_client* %112, i32 %113, i32 %114)
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @FAN_TO_REG(i64 %116, i64 %117)
  %119 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %120 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @LM87_REG_FAN_MIN(i32 %126)
  %128 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %129 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @lm87_write_value(%struct.i2c_client* %125, i32 %127, i32 %134)
  %136 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %137 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i64, i64* %9, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %111, %80, %29
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.i2c_client* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i64) #1

declare dso_local i32 @LM87_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

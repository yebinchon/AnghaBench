; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm80_data = type { i32**, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@f_min = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LM80_REG_FANDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm80_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.lm80_data* @dev_get_drvdata(%struct.device* %21)
  store %struct.lm80_data* %22, %struct.lm80_data** %11, align 8
  %23 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %24 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %23, i32 0, i32 3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %167

32:                                               ; preds = %4
  %33 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %34 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %37 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* @f_min, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %47 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DIV_FROM_REG(i32 %52)
  %54 = call i64 @FAN_FROM_REG(i32 %45, i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  switch i64 %55, label %84 [
    i64 1, label %56
    i64 2, label %63
    i64 4, label %70
    i64 8, label %77
  ]

56:                                               ; preds = %32
  %57 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %58 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  br label %93

63:                                               ; preds = %32
  %64 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %65 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 1, i32* %69, align 4
  br label %93

70:                                               ; preds = %32
  %71 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %72 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 2, i32* %76, align 4
  br label %93

77:                                               ; preds = %32
  %78 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %79 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 3, i32* %83, align 4
  br label %93

84:                                               ; preds = %32
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %89 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %167

93:                                               ; preds = %77, %70, %63, %56
  %94 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %95 = load i32, i32* @LM80_REG_FANDIV, align 4
  %96 = call i32 @lm80_read_value(%struct.i2c_client* %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %101 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %5, align 4
  br label %167

104:                                              ; preds = %93
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 2, %107
  %109 = shl i32 3, %108
  %110 = xor i32 %109, -1
  %111 = and i32 %105, %110
  %112 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %113 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  %121 = mul nsw i32 2, %120
  %122 = shl i32 %118, %121
  %123 = or i32 %111, %122
  store i32 %123, i32* %15, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %125 = load i32, i32* @LM80_REG_FANDIV, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @lm80_write_value(%struct.i2c_client* %124, i32 %125, i32 %126)
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %130 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @DIV_FROM_REG(i32 %135)
  %137 = call i32 @FAN_TO_REG(i64 %128, i32 %136)
  %138 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %139 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %138, i32 0, i32 0
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* @f_min, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %137, i32* %146, align 4
  %147 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  %150 = call i32 @LM80_REG_FAN_MIN(i32 %149)
  %151 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %152 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* @f_min, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @lm80_write_value(%struct.i2c_client* %147, i32 %150, i32 %160)
  %162 = load %struct.lm80_data*, %struct.lm80_data** %11, align 8
  %163 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %162, i32 0, i32 2
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i64, i64* %9, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %104, %99, %84, %30
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm80_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm80_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

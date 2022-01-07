; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc128_data = type { i32, i64, i32**, i32*, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@num_inputs = common dso_local global i32* null, align 8
@ADC128_REG_TEMP = common dso_local global i32 0, align 4
@ADC128_REG_TEMP_MAX = common dso_local global i32 0, align 4
@ADC128_REG_TEMP_HYST = common dso_local global i32 0, align 4
@ADC128_REG_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adc128_data* (%struct.device*)* @adc128_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adc128_data* @adc128_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adc128_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.adc128_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.adc128_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.adc128_data* %9, %struct.adc128_data** %3, align 8
  %10 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %11 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %10, i32 0, i32 7
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  store %struct.adc128_data* %13, %struct.adc128_data** %5, align 8
  %14 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %15 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %14, i32 0, i32 5
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %19 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @time_after(i64 %17, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %27 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %161, label %30

30:                                               ; preds = %25, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %95, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** @num_inputs, align 8
  %34 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %35 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ADC128_REG_IN(i32 %42)
  %44 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %162

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 4
  %51 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %52 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %50, i32* %58, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ADC128_REG_IN_MIN(i32 %60)
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %162

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 4
  %69 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %70 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %68, i32* %76, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ADC128_REG_IN_MAX(i32 %78)
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %77, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %162

84:                                               ; preds = %66
  %85 = load i32, i32* %7, align 4
  %86 = shl i32 %85, 4
  %87 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %88 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %31

98:                                               ; preds = %31
  %99 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %100 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 1
  br i1 %102, label %103, label %143

103:                                              ; preds = %98
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load i32, i32* @ADC128_REG_TEMP, align 4
  %106 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %162

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 7
  %113 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %114 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load i32, i32* @ADC128_REG_TEMP_MAX, align 4
  %119 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %162

123:                                              ; preds = %110
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 1
  %126 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %127 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* @ADC128_REG_TEMP_HYST, align 4
  %132 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %162

136:                                              ; preds = %123
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 %137, 1
  %139 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %140 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %136, %98
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = load i32, i32* @ADC128_REG_ALARM, align 4
  %146 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %162

150:                                              ; preds = %143
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %153 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i64, i64* @jiffies, align 8
  %157 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %158 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %157, i32 0, i32 6
  store i64 %156, i64* %158, align 8
  %159 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %160 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %150, %25
  br label %167

162:                                              ; preds = %149, %135, %122, %109, %83, %65, %47
  %163 = load i32, i32* %7, align 4
  %164 = call %struct.adc128_data* @ERR_PTR(i32 %163)
  store %struct.adc128_data* %164, %struct.adc128_data** %5, align 8
  %165 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %166 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %161
  %168 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %169 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %168, i32 0, i32 5
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.adc128_data*, %struct.adc128_data** %5, align 8
  ret %struct.adc128_data* %171
}

declare dso_local %struct.adc128_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADC128_REG_IN(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADC128_REG_IN_MIN(i32) #1

declare dso_local i32 @ADC128_REG_IN_MAX(i32) #1

declare dso_local %struct.adc128_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

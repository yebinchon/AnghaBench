; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max31790_data = type { i32, i32, i32*, i32*, i32*, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MAX31790_REG_FAN_FAULT_STATUS1 = common dso_local global i32 0, align 4
@MAX31790_REG_FAN_FAULT_STATUS2 = common dso_local global i32 0, align 4
@NR_CHANNEL = common dso_local global i32 0, align 4
@MAX31790_FAN_CFG_TACH_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max31790_data* (%struct.device*)* @max31790_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max31790_data* @max31790_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max31790_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.max31790_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.max31790_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.max31790_data* %9, %struct.max31790_data** %3, align 8
  %10 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %11 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %10, i32 0, i32 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  store %struct.max31790_data* %13, %struct.max31790_data** %5, align 8
  %14 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %15 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %14, i32 0, i32 6
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %19 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @time_after(i64 %17, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %27 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %147, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @MAX31790_REG_FAN_FAULT_STATUS1, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %148

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 63
  %40 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %41 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @MAX31790_REG_FAN_FAULT_STATUS2, align 4
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %148

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 63
  %51 = shl i32 %50, 6
  %52 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %53 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %138, %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NR_CHANNEL, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MAX31790_REG_TACH_COUNT(i32 %62)
  %64 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %61, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %148

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %71 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %77 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAX31790_FAN_CFG_TACH_INPUT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %68
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load i32, i32* @NR_CHANNEL, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @MAX31790_REG_TACH_COUNT(i32 %90)
  %92 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %87, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %148

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %99 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @NR_CHANNEL, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %97, i32* %105, align 4
  br label %137

106:                                              ; preds = %68
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @MAX31790_REG_PWMOUT(i32 %108)
  %110 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %107, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %148

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %117 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @MAX31790_REG_TARGET_COUNT(i32 %123)
  %125 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %122, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %148

129:                                              ; preds = %114
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %132 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %129, %96
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %56

141:                                              ; preds = %56
  %142 = load i64, i64* @jiffies, align 8
  %143 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %144 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %143, i32 0, i32 7
  store i64 %142, i64* %144, align 8
  %145 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %146 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %141, %25
  br label %153

148:                                              ; preds = %128, %113, %95, %67, %47, %36
  %149 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %150 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call %struct.max31790_data* @ERR_PTR(i32 %151)
  store %struct.max31790_data* %152, %struct.max31790_data** %5, align 8
  br label %153

153:                                              ; preds = %148, %147
  %154 = load %struct.max31790_data*, %struct.max31790_data** %3, align 8
  %155 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %154, i32 0, i32 6
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.max31790_data*, %struct.max31790_data** %5, align 8
  ret %struct.max31790_data* %157
}

declare dso_local %struct.max31790_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @MAX31790_REG_TACH_COUNT(i32) #1

declare dso_local i32 @MAX31790_REG_PWMOUT(i32) #1

declare dso_local i32 @MAX31790_REG_TARGET_COUNT(i32) #1

declare dso_local %struct.max31790_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

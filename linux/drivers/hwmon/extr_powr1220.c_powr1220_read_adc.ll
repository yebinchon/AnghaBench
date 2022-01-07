; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_powr1220.c_powr1220_read_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_powr1220.c_powr1220_read_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.powr1220_data = type { i32*, i32*, i32*, i32, i64*, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ADC_MAX_LOW_MEASUREMENT_MV = common dso_local global i32 0, align 4
@ADC_MUX = common dso_local global i32 0, align 4
@ADC_VALUE_LOW = common dso_local global i32 0, align 4
@ADC_VALUE_HIGH = common dso_local global i32 0, align 4
@ADC_STEP_MV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @powr1220_read_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powr1220_read_adc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.powr1220_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.powr1220_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.powr1220_data* %10, %struct.powr1220_data** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %12 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %16 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %15, i32 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @time_after(i64 %14, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %28 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %135, label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %37 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ADC_MAX_LOW_MEASUREMENT_MV, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %47 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45, %35
  store i32 16, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %57 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ADC_MUX, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @i2c_smbus_write_byte_data(i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %144

67:                                               ; preds = %55
  %68 = call i32 @udelay(i32 200)
  %69 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %70 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ADC_VALUE_LOW, align 4
  %73 = call i32 @i2c_smbus_read_byte_data(i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %144

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 4
  store i32 %79, i32* %6, align 4
  %80 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %81 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ADC_VALUE_HIGH, align 4
  %84 = call i32 @i2c_smbus_read_byte_data(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %144

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @ADC_STEP_MV, align 4
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %98 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %104 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 1, i32* %108, align 4
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %111 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %119 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %117, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %88
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %129 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %88
  br label %143

135:                                              ; preds = %26
  %136 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %137 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %135, %134
  br label %144

144:                                              ; preds = %143, %87, %76, %66
  %145 = load %struct.powr1220_data*, %struct.powr1220_data** %5, align 8
  %146 = getelementptr inbounds %struct.powr1220_data, %struct.powr1220_data* %145, i32 0, i32 3
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local %struct.powr1220_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

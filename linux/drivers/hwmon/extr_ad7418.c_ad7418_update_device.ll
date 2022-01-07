; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7418.c_ad7418_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7418.c_ad7418_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ad7418_data = type { i32, i32*, i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@AD7418_REG_CONF = common dso_local global i32 0, align 4
@AD7418_CH_TEMP = common dso_local global i32 0, align 4
@AD7418_REG_TEMP = common dso_local global i32* null, align 8
@AD7418_REG_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ad7418_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_update_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ad7418_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.ad7418_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.ad7418_data* %11, %struct.ad7418_data** %4, align 8
  %12 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %13 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %12, i32 0, i32 6
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %16 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %15, i32 0, i32 4
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %20 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i64 @time_after(i64 %18, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %33 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %141, label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* @AD7418_REG_CONF, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %145

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 31
  store i32 %46, i32* %7, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = load i32, i32* @AD7418_REG_CONF, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AD7418_CH_TEMP, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %145

56:                                               ; preds = %43
  %57 = call i32 @udelay(i32 30)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %80, %56
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32*, i32** @AD7418_REG_TEMP, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %62, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %145

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %75 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %58

83:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %84

84:                                               ; preds = %122, %83
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %87 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i32, i32* @AD7418_REG_CONF, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @AD7418_REG_ADC_CH(i32 %94)
  %96 = or i32 %93, %95
  %97 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %91, i32 %92, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %145

101:                                              ; preds = %90
  %102 = call i32 @udelay(i32 15)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %104 = load i32, i32* @AD7418_REG_ADC, align 4
  %105 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %145

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %112 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %115 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  store i32 %110, i32* %121, align 4
  br label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %9, align 4
  br label %84

127:                                              ; preds = %84
  %128 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %129 = load i32, i32* @AD7418_REG_CONF, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %128, i32 %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %145

135:                                              ; preds = %127
  %136 = load i64, i64* @jiffies, align 8
  %137 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %138 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %137, i32 0, i32 5
  store i64 %136, i64* %138, align 8
  %139 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %140 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %135, %31
  %142 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %143 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %142, i32 0, i32 4
  %144 = call i32 @mutex_unlock(i32* %143)
  store i32 0, i32* %2, align 4
  br label %152

145:                                              ; preds = %134, %108, %100, %71, %55, %42
  %146 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %147 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %149 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %148, i32 0, i32 4
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %145, %141
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.ad7418_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @AD7418_REG_ADC_CH(i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

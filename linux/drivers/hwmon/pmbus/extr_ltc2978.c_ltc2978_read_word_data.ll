; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i32*, i32*, i32*, i32 }

@LTC2978_MFR_VIN_MIN = common dso_local global i32 0, align 4
@LTC2978_MFR_VOUT_MIN = common dso_local global i32 0, align 4
@LTC2978_MFR_TEMPERATURE_MIN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ltc2978_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2978_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca %struct.ltc2978_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %10)
  store %struct.pmbus_driver_info* %11, %struct.pmbus_driver_info** %7, align 8
  %12 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %13 = call %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info* %12)
  store %struct.ltc2978_data* %13, %struct.ltc2978_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %99 [
    i32 131, label %15
    i32 130, label %23
    i32 132, label %84
    i32 134, label %96
    i32 129, label %96
    i32 133, label %96
    i32 128, label %96
  ]

15:                                               ; preds = %3
  %16 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LTC2978_MFR_VIN_MIN, align 4
  %20 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %21 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %20, i32 0, i32 3
  %22 = call i32 @ltc_get_min(%struct.ltc2978_data* %16, %struct.i2c_client* %17, i32 %18, i32 %19, i32* %21)
  store i32 %22, i32* %9, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LTC2978_MFR_VOUT_MIN, align 4
  %27 = call i32 @ltc_read_word_data(%struct.i2c_client* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %23
  %31 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %32 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %42 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %40, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %51 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %39, %30
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %60 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %58, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %70 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %57
  %76 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %77 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %23
  br label %104

84:                                               ; preds = %3
  %85 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @LTC2978_MFR_TEMPERATURE_MIN, align 4
  %89 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %90 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @ltc_get_min(%struct.ltc2978_data* %85, %struct.i2c_client* %86, i32 %87, i32 %88, i32* %94)
  store i32 %95, i32* %9, align 4
  br label %104

96:                                               ; preds = %3, %3, %3, %3
  %97 = load i32, i32* @ENXIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %104

99:                                               ; preds = %3
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ltc2978_read_word_data_common(%struct.i2c_client* %100, i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %96, %84, %83, %15
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @ltc_get_min(%struct.ltc2978_data*, %struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @ltc_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ltc2978_read_word_data_common(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

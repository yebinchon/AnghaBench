; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_read_word_data_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_read_word_data_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i32*, i32*, i32 }

@LTC2978_MFR_VIN_PEAK = common dso_local global i32 0, align 4
@LTC2978_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@LTC2978_MFR_TEMPERATURE_PEAK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ltc2978_read_word_data_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2978_read_word_data_common(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.ltc2978_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %11)
  store %struct.pmbus_driver_info* %12, %struct.pmbus_driver_info** %8, align 8
  %13 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %14 = call %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info* %13)
  store %struct.ltc2978_data* %14, %struct.ltc2978_data** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %71 [
    i32 132, label %16
    i32 131, label %24
    i32 133, label %58
    i32 128, label %70
    i32 129, label %70
    i32 130, label %70
  ]

16:                                               ; preds = %3
  %17 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @LTC2978_MFR_VIN_PEAK, align 4
  %21 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %22 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %21, i32 0, i32 2
  %23 = call i32 @ltc_get_max(%struct.ltc2978_data* %17, %struct.i2c_client* %18, i32 %19, i32 %20, i32* %22)
  store i32 %23, i32* %10, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @LTC2978_MFR_VOUT_PEAK, align 4
  %28 = call i32 @ltc_read_word_data(%struct.i2c_client* %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %34 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %32, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %44 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %31
  %50 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %51 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %24
  br label %81

58:                                               ; preds = %3
  %59 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @LTC2978_MFR_TEMPERATURE_PEAK, align 4
  %63 = load %struct.ltc2978_data*, %struct.ltc2978_data** %9, align 8
  %64 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @ltc_get_max(%struct.ltc2978_data* %59, %struct.i2c_client* %60, i32 %61, i32 %62, i32* %68)
  store i32 %69, i32* %10, align 4
  br label %81

70:                                               ; preds = %3, %3, %3
  store i32 0, i32* %10, align 4
  br label %81

71:                                               ; preds = %3
  %72 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %73 = call i32 @ltc_wait_ready(%struct.i2c_client* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load i32, i32* @ENODATA, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %70, %58, %57, %16
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @ltc_get_max(%struct.ltc2978_data*, %struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @ltc_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ltc_wait_ready(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

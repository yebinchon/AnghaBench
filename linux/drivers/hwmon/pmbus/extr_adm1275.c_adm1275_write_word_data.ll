; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.adm1275_data = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ADM1275_IOUT_WARN2_LIMIT = common dso_local global i32 0, align 4
@ADM1275_PEAK_IOUT = common dso_local global i32 0, align 4
@ADM1293_IOUT_MIN = common dso_local global i32 0, align 4
@ADM1275_PEAK_VOUT = common dso_local global i32 0, align 4
@ADM1275_PEAK_VIN = common dso_local global i32 0, align 4
@ADM1276_PEAK_PIN = common dso_local global i32 0, align 4
@ADM1293_PIN_MIN = common dso_local global i32 0, align 4
@ADM1278_PEAK_TEMP = common dso_local global i32 0, align 4
@ADM1275_SAMPLES_AVG_MAX = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @adm1275_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1275_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmbus_driver_info*, align 8
  %11 = alloca %struct.adm1275_data*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %13)
  store %struct.pmbus_driver_info* %14, %struct.pmbus_driver_info** %10, align 8
  %15 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %10, align 8
  %16 = call %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info* %15)
  store %struct.adm1275_data* %16, %struct.adm1275_data** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %99 [
    i32 136, label %24
    i32 137, label %24
    i32 132, label %29
    i32 128, label %45
    i32 129, label %49
    i32 131, label %53
    i32 130, label %69
    i32 133, label %73
    i32 134, label %90
    i32 135, label %90
  ]

24:                                               ; preds = %22, %22
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = load i32, i32* @ADM1275_IOUT_WARN2_LIMIT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @pmbus_write_word_data(%struct.i2c_client* %25, i32 0, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  br label %102

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = load i32, i32* @ADM1275_PEAK_IOUT, align 4
  %32 = call i32 @pmbus_write_word_data(%struct.i2c_client* %30, i32 0, i32 %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load %struct.adm1275_data*, %struct.adm1275_data** %11, align 8
  %37 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = load i32, i32* @ADM1293_IOUT_MIN, align 4
  %43 = call i32 @pmbus_write_word_data(%struct.i2c_client* %41, i32 0, i32 %42, i32 0)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %35, %29
  br label %102

45:                                               ; preds = %22
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = load i32, i32* @ADM1275_PEAK_VOUT, align 4
  %48 = call i32 @pmbus_write_word_data(%struct.i2c_client* %46, i32 0, i32 %47, i32 0)
  store i32 %48, i32* %12, align 4
  br label %102

49:                                               ; preds = %22
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load i32, i32* @ADM1275_PEAK_VIN, align 4
  %52 = call i32 @pmbus_write_word_data(%struct.i2c_client* %50, i32 0, i32 %51, i32 0)
  store i32 %52, i32* %12, align 4
  br label %102

53:                                               ; preds = %22
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load i32, i32* @ADM1276_PEAK_PIN, align 4
  %56 = call i32 @pmbus_write_word_data(%struct.i2c_client* %54, i32 0, i32 %55, i32 0)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.adm1275_data*, %struct.adm1275_data** %11, align 8
  %61 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %66 = load i32, i32* @ADM1293_PIN_MIN, align 4
  %67 = call i32 @pmbus_write_word_data(%struct.i2c_client* %65, i32 0, i32 %66, i32 0)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %64, %59, %53
  br label %102

69:                                               ; preds = %22
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = load i32, i32* @ADM1278_PEAK_TEMP, align 4
  %72 = call i32 @pmbus_write_word_data(%struct.i2c_client* %70, i32 0, i32 %71, i32 0)
  store i32 %72, i32* %12, align 4
  br label %102

73:                                               ; preds = %22
  %74 = load %struct.adm1275_data*, %struct.adm1275_data** %11, align 8
  %75 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %104

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @ADM1275_SAMPLES_AVG_MAX, align 4
  %84 = call i32 @clamp_val(i32 %82, i32 1, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.adm1275_data*, %struct.adm1275_data** %11, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ilog2(i32 %87)
  %89 = call i32 @adm1275_write_pmon_config(%struct.adm1275_data* %85, %struct.i2c_client* %86, i32 1, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %102

90:                                               ; preds = %22, %22
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ADM1275_SAMPLES_AVG_MAX, align 4
  %93 = call i32 @clamp_val(i32 %91, i32 1, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.adm1275_data*, %struct.adm1275_data** %11, align 8
  %95 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ilog2(i32 %96)
  %98 = call i32 @adm1275_write_pmon_config(%struct.adm1275_data* %94, %struct.i2c_client* %95, i32 0, i32 %97)
  store i32 %98, i32* %12, align 4
  br label %102

99:                                               ; preds = %22
  %100 = load i32, i32* @ENODATA, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %90, %81, %69, %68, %49, %45, %44, %24
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %78, %19
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @adm1275_write_pmon_config(%struct.adm1275_data*, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

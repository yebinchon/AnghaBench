; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.max34440_data = type { i32 }

@MAX34446_MFR_POUT_PEAK = common dso_local global i32 0, align 4
@MAX34446_MFR_POUT_AVG = common dso_local global i32 0, align 4
@MAX34440_MFR_VOUT_MIN = common dso_local global i32 0, align 4
@MAX34440_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@MAX34440_MFR_IOUT_PEAK = common dso_local global i32 0, align 4
@max34446 = common dso_local global i32 0, align 4
@max34451 = common dso_local global i32 0, align 4
@MAX34446_MFR_IOUT_AVG = common dso_local global i32 0, align 4
@MAX34440_MFR_TEMPERATURE_PEAK = common dso_local global i32 0, align 4
@MAX34446_MFR_TEMPERATURE_AVG = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @max34440_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max34440_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmbus_driver_info*, align 8
  %10 = alloca %struct.max34440_data*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %12)
  store %struct.pmbus_driver_info* %13, %struct.pmbus_driver_info** %9, align 8
  %14 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %15 = call %struct.max34440_data* @to_max34440_data(%struct.pmbus_driver_info* %14)
  store %struct.max34440_data* %15, %struct.max34440_data** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %87 [
    i32 130, label %17
    i32 128, label %30
    i32 131, label %43
    i32 129, label %68
  ]

17:                                               ; preds = %4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX34446_MFR_POUT_PEAK, align 4
  %21 = call i32 @pmbus_write_word_data(%struct.i2c_client* %18, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %90

25:                                               ; preds = %17
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MAX34446_MFR_POUT_AVG, align 4
  %29 = call i32 @pmbus_write_word_data(%struct.i2c_client* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %11, align 4
  br label %90

30:                                               ; preds = %4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX34440_MFR_VOUT_MIN, align 4
  %34 = call i32 @pmbus_write_word_data(%struct.i2c_client* %31, i32 %32, i32 %33, i32 32767)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %90

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAX34440_MFR_VOUT_PEAK, align 4
  %42 = call i32 @pmbus_write_word_data(%struct.i2c_client* %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  br label %90

43:                                               ; preds = %4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX34440_MFR_IOUT_PEAK, align 4
  %47 = call i32 @pmbus_write_word_data(%struct.i2c_client* %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %43
  %51 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %52 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @max34446, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %58 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @max34451, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56, %50
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MAX34446_MFR_IOUT_AVG, align 4
  %66 = call i32 @pmbus_write_word_data(%struct.i2c_client* %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %56, %43
  br label %90

68:                                               ; preds = %4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MAX34440_MFR_TEMPERATURE_PEAK, align 4
  %72 = call i32 @pmbus_write_word_data(%struct.i2c_client* %69, i32 %70, i32 %71, i32 32768)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %77 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @max34446, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @MAX34446_MFR_TEMPERATURE_AVG, align 4
  %85 = call i32 @pmbus_write_word_data(%struct.i2c_client* %82, i32 %83, i32 %84, i32 0)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %81, %75, %68
  br label %90

87:                                               ; preds = %4
  %88 = load i32, i32* @ENODATA, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %87, %86, %67, %38, %37, %25, %24
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.max34440_data* @to_max34440_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

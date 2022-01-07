; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.max34440_data = type { i32 }

@MAX34440_MFR_VOUT_MIN = common dso_local global i32 0, align 4
@MAX34440_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@max34446 = common dso_local global i32 0, align 4
@max34451 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MAX34446_MFR_IOUT_AVG = common dso_local global i32 0, align 4
@MAX34440_MFR_IOUT_PEAK = common dso_local global i32 0, align 4
@MAX34446_MFR_POUT_AVG = common dso_local global i32 0, align 4
@MAX34446_MFR_POUT_PEAK = common dso_local global i32 0, align 4
@max34460 = common dso_local global i32 0, align 4
@max34461 = common dso_local global i32 0, align 4
@MAX34446_MFR_TEMPERATURE_AVG = common dso_local global i32 0, align 4
@MAX34440_MFR_TEMPERATURE_PEAK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max34440_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max34440_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmbus_driver_info*, align 8
  %10 = alloca %struct.max34440_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %11)
  store %struct.pmbus_driver_info* %12, %struct.pmbus_driver_info** %9, align 8
  %13 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %14 = call %struct.max34440_data* @to_max34440_data(%struct.pmbus_driver_info* %13)
  store %struct.max34440_data* %14, %struct.max34440_data** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %121 [
    i32 132, label %16
    i32 133, label %21
    i32 139, label %26
    i32 138, label %46
    i32 137, label %51
    i32 136, label %65
    i32 135, label %79
    i32 134, label %105
    i32 130, label %110
    i32 128, label %120
    i32 131, label %120
    i32 129, label %120
  ]

16:                                               ; preds = %3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX34440_MFR_VOUT_MIN, align 4
  %20 = call i32 @pmbus_read_word_data(%struct.i2c_client* %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  br label %124

21:                                               ; preds = %3
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX34440_MFR_VOUT_PEAK, align 4
  %25 = call i32 @pmbus_read_word_data(%struct.i2c_client* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %124

26:                                               ; preds = %3
  %27 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %28 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @max34446, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %34 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @max34451, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %126

41:                                               ; preds = %32, %26
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX34446_MFR_IOUT_AVG, align 4
  %45 = call i32 @pmbus_read_word_data(%struct.i2c_client* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %124

46:                                               ; preds = %3
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MAX34440_MFR_IOUT_PEAK, align 4
  %50 = call i32 @pmbus_read_word_data(%struct.i2c_client* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %124

51:                                               ; preds = %3
  %52 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %53 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @max34446, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %126

60:                                               ; preds = %51
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MAX34446_MFR_POUT_AVG, align 4
  %64 = call i32 @pmbus_read_word_data(%struct.i2c_client* %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %124

65:                                               ; preds = %3
  %66 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %67 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @max34446, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %126

74:                                               ; preds = %65
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MAX34446_MFR_POUT_PEAK, align 4
  %78 = call i32 @pmbus_read_word_data(%struct.i2c_client* %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %124

79:                                               ; preds = %3
  %80 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %81 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @max34446, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %87 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @max34460, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %93 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @max34461, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @ENXIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %126

100:                                              ; preds = %91, %85, %79
  %101 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MAX34446_MFR_TEMPERATURE_AVG, align 4
  %104 = call i32 @pmbus_read_word_data(%struct.i2c_client* %101, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %124

105:                                              ; preds = %3
  %106 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @MAX34440_MFR_TEMPERATURE_PEAK, align 4
  %109 = call i32 @pmbus_read_word_data(%struct.i2c_client* %106, i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  br label %124

110:                                              ; preds = %3
  %111 = load %struct.max34440_data*, %struct.max34440_data** %10, align 8
  %112 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @max34446, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %126

119:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %124

120:                                              ; preds = %3, %3, %3
  store i32 0, i32* %8, align 4
  br label %124

121:                                              ; preds = %3
  %122 = load i32, i32* @ENODATA, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %120, %119, %105, %100, %74, %60, %46, %41, %21, %16
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %116, %97, %71, %57, %38
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.max34440_data* @to_max34440_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

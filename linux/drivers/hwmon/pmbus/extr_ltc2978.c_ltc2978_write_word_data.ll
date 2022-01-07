; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i32, i32, i32, i32, i32*, i32*, i32, i32*, i32, i32, i32*, i32*, i32* }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @ltc2978_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2978_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmbus_driver_info*, align 8
  %11 = alloca %struct.ltc2978_data*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %13)
  store %struct.pmbus_driver_info* %14, %struct.pmbus_driver_info** %10, align 8
  %15 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %10, align 8
  %16 = call %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info* %15)
  store %struct.ltc2978_data* %16, %struct.ltc2978_data** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %101 [
    i32 134, label %18
    i32 132, label %26
    i32 133, label %34
    i32 131, label %51
    i32 128, label %58
    i32 129, label %75
    i32 130, label %84
  ]

18:                                               ; preds = %4
  %19 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %20 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %19, i32 0, i32 0
  store i32 31744, i32* %20, align 8
  %21 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %22 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %21, i32 0, i32 1
  store i32 31743, i32* %22, align 4
  %23 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %23, %struct.i2c_client* %24, i32 0)
  store i32 %25, i32* %12, align 4
  br label %111

26:                                               ; preds = %4
  %27 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %28 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %27, i32 0, i32 2
  store i32 31744, i32* %28, align 8
  %29 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %30 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %29, i32 0, i32 3
  store i32 31743, i32* %30, align 4
  %31 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %31, %struct.i2c_client* %32, i32 0)
  store i32 %33, i32* %12, align 4
  br label %111

34:                                               ; preds = %4
  %35 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %36 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 31744, i32* %40, align 4
  %41 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %42 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 64511, i32* %46, align 4
  %47 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %47, %struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %111

51:                                               ; preds = %4
  %52 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %53 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %52, i32 0, i32 6
  store i32 31744, i32* %53, align 8
  %54 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %54, %struct.i2c_client* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %111

58:                                               ; preds = %4
  %59 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %60 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 65535, i32* %64, align 4
  %65 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %66 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %65, i32 0, i32 12
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  %71 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %71, %struct.i2c_client* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %111

75:                                               ; preds = %4
  %76 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %77 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %76, i32 0, i32 8
  store i32 31743, i32* %77, align 8
  %78 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %79 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %78, i32 0, i32 9
  store i32 31744, i32* %79, align 4
  %80 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %80, %struct.i2c_client* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %111

84:                                               ; preds = %4
  %85 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %86 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %85, i32 0, i32 10
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 31743, i32* %90, align 4
  %91 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %92 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %91, i32 0, i32 11
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 31744, i32* %96, align 4
  %97 = load %struct.ltc2978_data*, %struct.ltc2978_data** %11, align 8
  %98 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %97, %struct.i2c_client* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %111

101:                                              ; preds = %4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %103 = call i32 @ltc_wait_ready(%struct.i2c_client* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %113

108:                                              ; preds = %101
  %109 = load i32, i32* @ENODATA, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %84, %75, %58, %51, %34, %26, %18
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @ltc2978_clear_peaks(%struct.ltc2978_data*, %struct.i2c_client*, i32) #1

declare dso_local i32 @ltc_wait_ready(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

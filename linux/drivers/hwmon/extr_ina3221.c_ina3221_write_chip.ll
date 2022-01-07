; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina3221_data = type { i32, i32 }

@ina3221_avg_samples = common dso_local global i32 0, align 4
@INA3221_CONFIG_AVG_MASK = common dso_local global i32 0, align 4
@INA3221_CONFIG_AVG_SHIFT = common dso_local global i32 0, align 4
@INA3221_CONFIG = common dso_local global i32 0, align 4
@ina3221_conv_time = common dso_local global i32 0, align 4
@INA3221_CONFIG_VBUS_CT_MASK = common dso_local global i32 0, align 4
@INA3221_CONFIG_VSH_CT_MASK = common dso_local global i32 0, align 4
@INA3221_CONFIG_VBUS_CT_SHIFT = common dso_local global i32 0, align 4
@INA3221_CONFIG_VSH_CT_SHIFT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @ina3221_write_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_write_chip(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ina3221_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ina3221_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.ina3221_data* %13, %struct.ina3221_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %88 [
    i32 129, label %15
    i32 128, label %46
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @ina3221_avg_samples, align 4
  %19 = load i32, i32* @ina3221_avg_samples, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @find_closest(i32 %17, i32 %18, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %23 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INA3221_CONFIG_AVG_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @INA3221_CONFIG_AVG_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %33 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INA3221_CONFIG, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %91

42:                                               ; preds = %15
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %45 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %91

46:                                               ; preds = %3
  %47 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %48 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ina3221_interval_ms_to_conv_time(i32 %49, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @ina3221_conv_time, align 4
  %54 = load i32, i32* @ina3221_conv_time, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @find_closest(i32 %52, i32 %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @INA3221_CONFIG_VBUS_CT_MASK, align 4
  %58 = load i32, i32* @INA3221_CONFIG_VSH_CT_MASK, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %61 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @INA3221_CONFIG_VBUS_CT_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @INA3221_CONFIG_VSH_CT_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %75 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INA3221_CONFIG, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @regmap_write(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %46
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %91

84:                                               ; preds = %46
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %87 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %91

88:                                               ; preds = %3
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %84, %82, %42, %40
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @find_closest(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ina3221_interval_ms_to_conv_time(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

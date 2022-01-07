; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmc5843_data = type { i32, i32 }

@HMC5843_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no HMC5843/5883/5883L/5983 sensor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HMC5843_MEAS_CONF_NORMAL = common dso_local global i32 0, align 4
@HMC5843_RATE_DEFAULT = common dso_local global i32 0, align 4
@HMC5843_RANGE_GAIN_DEFAULT = common dso_local global i32 0, align 4
@HMC5843_MODE_CONVERSION_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmc5843_data*)* @hmc5843_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_init(%struct.hmc5843_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hmc5843_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store %struct.hmc5843_data* %0, %struct.hmc5843_data** %3, align 8
  %6 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %7 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HMC5843_ID_REG, align 4
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(i8* %11)
  %13 = call i32 @regmap_bulk_read(i32 %8, i32 %9, i8* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 72
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 52
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 51
  br i1 %32, label %33, label %40

33:                                               ; preds = %28, %23, %18
  %34 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %35 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %28
  %41 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %42 = load i32, i32* @HMC5843_MEAS_CONF_NORMAL, align 4
  %43 = call i32 @hmc5843_set_meas_conf(%struct.hmc5843_data* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %50 = load i32, i32* @HMC5843_RATE_DEFAULT, align 4
  %51 = call i32 @hmc5843_set_samp_freq(%struct.hmc5843_data* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %48
  %57 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %58 = load i32, i32* @HMC5843_RANGE_GAIN_DEFAULT, align 4
  %59 = call i32 @hmc5843_set_range_gain(%struct.hmc5843_data* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %66 = load i32, i32* @HMC5843_MODE_CONVERSION_CONTINUOUS, align 4
  %67 = call i32 @hmc5843_set_mode(%struct.hmc5843_data* %65, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %62, %54, %46, %33, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hmc5843_set_meas_conf(%struct.hmc5843_data*, i32) #1

declare dso_local i32 @hmc5843_set_samp_freq(%struct.hmc5843_data*, i32) #1

declare dso_local i32 @hmc5843_set_range_gain(%struct.hmc5843_data*, i32) #1

declare dso_local i32 @hmc5843_set_mode(%struct.hmc5843_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

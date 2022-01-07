; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.tsl2772_chip = type { i32 }

@TSL2772_BOOT_MIN_SLEEP_TIME = common dso_local global i32 0, align 4
@TSL2772_BOOT_MAX_SLEEP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tsl2772_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.tsl2772_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %9)
  store %struct.tsl2772_chip* %10, %struct.tsl2772_chip** %5, align 8
  %11 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %5, align 8
  %16 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_bulk_enable(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @TSL2772_BOOT_MIN_SLEEP_TIME, align 4
  %25 = load i32, i32* @TSL2772_BOOT_MAX_SLEEP_TIME, align 4
  %26 = call i32 @usleep_range(i32 %24, i32 %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = call i32 @tsl2772_chip_on(%struct.iio_dev* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tsl2772_chip_on(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

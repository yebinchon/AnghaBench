; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mpu3050 = type { i32, i32 }

@MPU3050_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error reading IRQ status\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MPU3050_INT_STATUS_RAW_RDY = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpu3050_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.mpu3050*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_trigger*
  store %struct.iio_trigger* %12, %struct.iio_trigger** %6, align 8
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %14 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %15)
  store %struct.mpu3050* %16, %struct.mpu3050** %8, align 8
  %17 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %18 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPU3050_INT_STATUS, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %26 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MPU3050_INT_STATUS_RAW_RDY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @iio_trigger_poll_chained(i8* %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iio_trigger_poll_chained(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.itg3200 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reset device\00", align 1
@ITG3200_REG_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@ITG3200_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"error resetting device\00", align 1
@ITG3200_REG_IRQ_CONFIG = common dso_local global i32 0, align 4
@ITG3200_IRQ_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ITG3200_IRQ_PUSH_PULL = common dso_local global i32 0, align 4
@ITG3200_IRQ_LATCH_50US_PULSE = common dso_local global i32 0, align 4
@ITG3200_IRQ_LATCH_CLEAR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"error init device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @itg3200_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itg3200_reset(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.itg3200*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.itg3200* @iio_priv(%struct.iio_dev* %5)
  store %struct.itg3200* %6, %struct.itg3200** %3, align 8
  %7 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %8 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %13 = load i32, i32* @ITG3200_REG_POWER_MANAGEMENT, align 4
  %14 = load i32, i32* @ITG3200_RESET, align 4
  %15 = call i32 @itg3200_write_reg_8(%struct.iio_dev* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %20 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %45

24:                                               ; preds = %1
  %25 = call i32 @udelay(i32 1500)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %27 = load i32, i32* @ITG3200_REG_IRQ_CONFIG, align 4
  %28 = load i32, i32* @ITG3200_IRQ_ACTIVE_HIGH, align 4
  %29 = load i32, i32* @ITG3200_IRQ_PUSH_PULL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ITG3200_IRQ_LATCH_50US_PULSE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ITG3200_IRQ_LATCH_CLEAR_ANY, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @itg3200_write_reg_8(%struct.iio_dev* %26, i32 %27, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %40 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %24
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.itg3200* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @itg3200_write_reg_8(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

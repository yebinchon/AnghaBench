; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_initial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.itg3200 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ITG3200_REG_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid reg value 0x%02x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @itg3200_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itg3200_initial_setup(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.itg3200*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.itg3200* @iio_priv(%struct.iio_dev* %6)
  store %struct.itg3200* %7, %struct.itg3200** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call i32 @itg3200_reset(%struct.iio_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %15 = load i32, i32* @ITG3200_REG_ADDRESS, align 4
  %16 = call i32 @itg3200_read_reg_8(%struct.iio_dev* %14, i32 %15, i32* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %37

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = and i32 %22, 63
  %24 = icmp ne i32 %23, 52
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.itg3200*, %struct.itg3200** %3, align 8
  %27 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %20
  %35 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %36 = call i32 @itg3200_enable_full_scale(%struct.iio_dev* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %25, %19, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.itg3200* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_reset(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_read_reg_8(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @itg3200_enable_full_scale(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

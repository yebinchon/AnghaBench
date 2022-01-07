; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7766.c_ad7766_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7766.c_ad7766_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7766 = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to enable MCLK: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7766_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7766_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7766*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ad7766* @iio_priv(%struct.iio_dev* %6)
  store %struct.ad7766* %7, %struct.ad7766** %4, align 8
  %8 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %9 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %13 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_bulk_enable(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %20 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %28 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %35 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %41 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %45 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_bulk_disable(i32 %43, i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %26
  %50 = load %struct.ad7766*, %struct.ad7766** %4, align 8
  %51 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gpiod_set_value(i32 %52, i32 0)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %33, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.ad7766* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

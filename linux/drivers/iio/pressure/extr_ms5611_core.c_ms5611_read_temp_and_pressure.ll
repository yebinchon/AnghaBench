; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_read_temp_and_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_read_temp_and_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ms5611_state = type { i32 (i32*, i32*, i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32*, i32*)* }

@.str = private unnamed_addr constant [41 x i8] c"failed to read temperature and pressure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*, i32*)* @ms5611_read_temp_and_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_read_temp_and_pressure(%struct.iio_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ms5611_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ms5611_state* %11, %struct.ms5611_state** %9, align 8
  %12 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %13 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %12, i32 0, i32 0
  %14 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %13, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 %14(i32* %16, i32* %17, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %29 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_2__*, i32*, i32*)*, i32 (%struct.TYPE_2__*, i32*, i32*)** %31, align 8
  %33 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %34 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 %32(%struct.TYPE_2__* %35, i32* %36, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %27, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

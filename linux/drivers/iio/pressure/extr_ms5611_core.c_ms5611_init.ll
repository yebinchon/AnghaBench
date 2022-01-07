; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ms5611_state = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to enable Vdd supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ms5611_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ms5611_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.ms5611_state* %7, %struct.ms5611_state** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @devm_regulator_get(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %14 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %16 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %22 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %27 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_enable(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %25
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = call i32 @ms5611_reset(%struct.iio_dev* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %48 = call i32 @ms5611_read_prom(%struct.iio_dev* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %51, %45
  %54 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %55 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regulator_disable(i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %52, %32, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ms5611_reset(%struct.iio_dev*) #1

declare dso_local i32 @ms5611_read_prom(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max5821_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@max5821_load_dac_command = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @max5821_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5821_set_value(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max5821_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.max5821_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.max5821_data* %13, %struct.max5821_data** %8, align 8
  %14 = load %struct.max5821_data*, %struct.max5821_data** %8, align 8
  %15 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 1023
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %28, %25
  %35 = load i32*, i32** @max5821_load_dac_command, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 6
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 63
  %48 = shl i32 %47, 2
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %52 = call i32 @i2c_master_send(%struct.i2c_client* %50, i32* %51, i32 2)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %64

57:                                               ; preds = %34
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60, %55, %31, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.max5821_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

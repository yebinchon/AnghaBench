; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.opt3001 = type { i32, i32, i64 }

@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_CONFIGURATION_M_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to write register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @opt3001_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.opt3001*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %10)
  store %struct.opt3001* %11, %struct.opt3001** %5, align 8
  %12 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %13 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.iio_dev* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %24 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %27 = call i32 @i2c_smbus_read_word_swapped(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %32 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %40 = load i32, i32* @OPT3001_CONFIGURATION_M_SHUTDOWN, align 4
  %41 = call i32 @opt3001_set_mode(%struct.opt3001* %39, i32* %7, i32 %40)
  %42 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %43 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @i2c_smbus_write_word_swapped(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %52 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50, %30
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @opt3001_set_mode(%struct.opt3001*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

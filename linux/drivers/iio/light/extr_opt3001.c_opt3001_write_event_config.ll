; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.opt3001 = type { i64, i32, i32, i32 }

@OPT3001_CONFIGURATION_M_CONTINUOUS = common dso_local global i64 0, align 8
@OPT3001_CONFIGURATION_M_SHUTDOWN = common dso_local global i64 0, align 8
@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to write register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @opt3001_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.opt3001*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %16)
  store %struct.opt3001* %17, %struct.opt3001** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %22 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OPT3001_CONFIGURATION_M_CONTINUOUS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %88

27:                                               ; preds = %20, %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %32 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OPT3001_CONFIGURATION_M_SHUTDOWN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %88

37:                                               ; preds = %30, %27
  %38 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %39 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @OPT3001_CONFIGURATION_M_CONTINUOUS, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @OPT3001_CONFIGURATION_M_SHUTDOWN, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %51 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %54 = call i32 @i2c_smbus_read_word_swapped(i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %59 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %83

63:                                               ; preds = %47
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %15, align 4
  %65 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @opt3001_set_mode(%struct.opt3001* %65, i32* %15, i32 %66)
  %68 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %69 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @i2c_smbus_write_word_swapped(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %78 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %76, %57
  %84 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %85 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %36, %26
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @opt3001_set_mode(%struct.opt3001*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp3911 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get vref voltage: %d\0A\00", align 1
@MCP3911_INT_VREF_UV = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mcp3911_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3911_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mcp3911*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.mcp3911* @iio_priv(%struct.iio_dev* %13)
  store %struct.mcp3911* %14, %struct.mcp3911** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %18 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %76 [
    i64 129, label %21
    i64 130, label %34
    i64 128, label %47
  ]

21:                                               ; preds = %5
  %22 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MCP3911_CHANNEL(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @mcp3911_read(%struct.mcp3911* %22, i32 %26, i32* %27, i32 3)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %77

32:                                               ; preds = %21
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %12, align 4
  br label %76

34:                                               ; preds = %5
  %35 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MCP3911_OFFCAL(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @mcp3911_read(%struct.mcp3911* %35, i32 %39, i32* %40, i32 3)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %77

45:                                               ; preds = %34
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %12, align 4
  br label %76

47:                                               ; preds = %5
  %48 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %49 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %54 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regulator_get_voltage(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %77

66:                                               ; preds = %52
  %67 = load i32, i32* %12, align 4
  %68 = sdiv i32 %67, 1000
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %73

70:                                               ; preds = %47
  %71 = load i32, i32* @MCP3911_INT_VREF_UV, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32*, i32** %9, align 8
  store i32 24, i32* %74, align 4
  %75 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %5, %73, %45, %32
  br label %77

77:                                               ; preds = %76, %59, %44, %31
  %78 = load %struct.mcp3911*, %struct.mcp3911** %11, align 8
  %79 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %12, align 4
  ret i32 %81
}

declare dso_local %struct.mcp3911* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcp3911_read(%struct.mcp3911*, i32, i32*, i32) #1

declare dso_local i32 @MCP3911_CHANNEL(i32) #1

declare dso_local i32 @MCP3911_OFFCAL(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp4131_data = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MCP4131_WIPER_SHIFT = common dso_local global i32 0, align 4
@MCP4131_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mcp4131_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4131_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mcp4131_data*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mcp4131_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mcp4131_data* %16, %struct.mcp4131_data** %13, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i64, i64* %11, align 8
  switch i64 %20, label %89 [
    i64 129, label %21
    i64 128, label %74
  ]

21:                                               ; preds = %5
  %22 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %23 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @MCP4131_WIPER_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @MCP4131_READ, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %31 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %35 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %39 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %42 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @mcp4131_read(i32 %40, i32* %43, i32 2)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %49 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %92

52:                                               ; preds = %21
  %53 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %54 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @MCP4131_CMDERR(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %60 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %92

64:                                               ; preds = %52
  %65 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %66 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @MCP4131_RAW(i32* %67)
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %71 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %6, align 4
  br label %92

74:                                               ; preds = %5
  %75 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %76 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 1000, %79
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %83 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %5
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %74, %64, %58, %47
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.mcp4131_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcp4131_read(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MCP4131_CMDERR(i32*) #1

declare dso_local i32 @MCP4131_RAW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

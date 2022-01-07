; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp41010.c_mcp41010_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp41010.c_mcp41010_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp41010_data = type { i32*, i32*, i32, i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MCP41010_WIPER_MAX = common dso_local global i32 0, align 4
@MCP41010_WIPER_CHANNEL = common dso_local global i32 0, align 4
@MCP41010_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mcp41010_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp41010_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mcp41010_data*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mcp41010_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mcp41010_data* %16, %struct.mcp41010_data** %13, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %82

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MCP41010_WIPER_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %82

36:                                               ; preds = %30
  %37 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %38 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @MCP41010_WIPER_CHANNEL, align 4
  %41 = load i32, i32* %14, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %44 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @MCP41010_WRITE, align 4
  %48 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %49 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 255
  %56 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %57 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %61 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %64 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @spi_write(i32 %62, i32* %65, i32 8)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %36
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %72 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %36
  %78 = load %struct.mcp41010_data*, %struct.mcp41010_data** %13, align 8
  %79 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %33, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.mcp41010_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

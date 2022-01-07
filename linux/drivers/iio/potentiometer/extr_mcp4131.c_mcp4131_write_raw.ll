; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp4131_data = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCP4131_WIPER_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCP4131_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mcp4131_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4131_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mcp4131_data*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mcp4131_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mcp4131_data* %16, %struct.mcp4131_data** %13, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MCP4131_WIPER_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %38 [
    i64 128, label %23
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %26 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %79

37:                                               ; preds = %31
  br label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %79

41:                                               ; preds = %37
  %42 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %43 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @MCP4131_WIPER_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %49 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @MCP4131_WRITE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %57 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 255
  %64 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %65 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %69 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %72 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @spi_write(i32 %70, i32* %73, i32 2)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.mcp4131_data*, %struct.mcp4131_data** %13, align 8
  %76 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %41, %38, %34
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.mcp4131_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp3422 = type { i64, i32* }
%struct.iio_chan_spec = type { i64 }

@MCP3422_CHANNEL_MASK = common dso_local global i64 0, align 8
@MCP3422_PGA_MASK = common dso_local global i64 0, align 8
@mcp3422_read_times = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp3422*, %struct.iio_chan_spec*, i32*)* @mcp3422_read_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_read_channel(%struct.mcp3422* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp3422*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mcp3422* %0, %struct.mcp3422** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %16 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @MCP3422_CHANNEL(i64 %17)
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %22 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* @MCP3422_CHANNEL_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @MCP3422_CHANNEL_VALUE(i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @MCP3422_PGA_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %9, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %9, align 8
  %36 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %37 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @MCP3422_PGA_VALUE(i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @mcp3422_update_config(%struct.mcp3422* %45, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %20
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %65

52:                                               ; preds = %20
  %53 = load i32*, i32** @mcp3422_read_times, align 8
  %54 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %55 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @MCP3422_SAMPLE_RATE(i64 %56)
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @msleep(i32 %59)
  br label %61

61:                                               ; preds = %52, %3
  %62 = load %struct.mcp3422*, %struct.mcp3422** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @mcp3422_read(%struct.mcp3422* %62, i32* %63, i64* %9)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %50
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @MCP3422_CHANNEL(i64) #1

declare dso_local i64 @MCP3422_CHANNEL_VALUE(i64) #1

declare dso_local i64 @MCP3422_PGA_VALUE(i32) #1

declare dso_local i32 @mcp3422_update_config(%struct.mcp3422*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @MCP3422_SAMPLE_RATE(i64) #1

declare dso_local i32 @mcp3422_read(%struct.mcp3422*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

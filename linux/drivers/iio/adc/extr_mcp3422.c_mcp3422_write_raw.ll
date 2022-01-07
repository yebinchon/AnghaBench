; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.mcp3422 = type { i64, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mcp3422_scales = common dso_local global i32** null, align 8
@MCP3422_CHANNEL_MASK = common dso_local global i64 0, align 8
@MCP3422_PGA_MASK = common dso_local global i64 0, align 8
@MCP3422_SRATE_240 = common dso_local global i64 0, align 8
@MCP3422_SRATE_60 = common dso_local global i64 0, align 8
@MCP3422_SRATE_15 = common dso_local global i64 0, align 8
@MCP3422_SRATE_3 = common dso_local global i64 0, align 8
@MCP3422_SRATE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mcp3422_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcp3422*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.mcp3422* @iio_priv(%struct.iio_dev* %18)
  store %struct.mcp3422* %19, %struct.mcp3422** %12, align 8
  %20 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %21 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i64 @MCP3422_SAMPLE_RATE(i64 %26)
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %11, align 8
  switch i64 %28, label %132 [
    i64 128, label %29
    i64 129, label %91
  ]

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %136

35:                                               ; preds = %29
  store i64 0, i64* %17, align 8
  br label %36

36:                                               ; preds = %85, %35
  %37 = load i64, i64* %17, align 8
  %38 = load i32**, i32*** @mcp3422_scales, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @ARRAY_SIZE(i32* %40)
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = load i32**, i32*** @mcp3422_scales, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %17, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %44, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %43
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %56 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load i64, i64* @MCP3422_CHANNEL_MASK, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %14, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @MCP3422_CHANNEL_VALUE(i64 %64)
  %66 = load i64, i64* %14, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* @MCP3422_PGA_MASK, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %14, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %14, align 8
  %72 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %73 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @MCP3422_PGA_VALUE(i64 %77)
  %79 = load i64, i64* %14, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %14, align 8
  %81 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @mcp3422_update_config(%struct.mcp3422* %81, i64 %82)
  store i32 %83, i32* %6, align 4
  br label %136

84:                                               ; preds = %43
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %17, align 8
  br label %36

88:                                               ; preds = %36
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %136

91:                                               ; preds = %5
  %92 = load i32, i32* %9, align 4
  switch i32 %92, label %109 [
    i32 240, label %93
    i32 60, label %95
    i32 15, label %97
    i32 3, label %99
  ]

93:                                               ; preds = %91
  %94 = load i64, i64* @MCP3422_SRATE_240, align 8
  store i64 %94, i64* %13, align 8
  br label %112

95:                                               ; preds = %91
  %96 = load i64, i64* @MCP3422_SRATE_60, align 8
  store i64 %96, i64* %13, align 8
  br label %112

97:                                               ; preds = %91
  %98 = load i64, i64* @MCP3422_SRATE_15, align 8
  store i64 %98, i64* %13, align 8
  br label %112

99:                                               ; preds = %91
  %100 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %101 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 4
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %136

107:                                              ; preds = %99
  %108 = load i64, i64* @MCP3422_SRATE_3, align 8
  store i64 %108, i64* %13, align 8
  br label %112

109:                                              ; preds = %91
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %136

112:                                              ; preds = %107, %97, %95, %93
  %113 = load i64, i64* @MCP3422_CHANNEL_MASK, align 8
  %114 = xor i64 %113, -1
  %115 = load i64, i64* %14, align 8
  %116 = and i64 %115, %114
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i64 @MCP3422_CHANNEL_VALUE(i64 %117)
  %119 = load i64, i64* %14, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* @MCP3422_SRATE_MASK, align 8
  %122 = xor i64 %121, -1
  %123 = load i64, i64* %14, align 8
  %124 = and i64 %123, %122
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @MCP3422_SAMPLE_RATE_VALUE(i64 %125)
  %127 = load i64, i64* %14, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %14, align 8
  %129 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @mcp3422_update_config(%struct.mcp3422* %129, i64 %130)
  store i32 %131, i32* %6, align 4
  br label %136

132:                                              ; preds = %5
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %133, %112, %109, %104, %88, %53, %32
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.mcp3422* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @MCP3422_SAMPLE_RATE(i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @MCP3422_CHANNEL_VALUE(i64) #1

declare dso_local i64 @MCP3422_PGA_VALUE(i64) #1

declare dso_local i32 @mcp3422_update_config(%struct.mcp3422*, i64) #1

declare dso_local i64 @MCP3422_SAMPLE_RATE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

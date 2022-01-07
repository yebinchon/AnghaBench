; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_show_scales.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_show_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mcp3422 = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"0.%09u 0.%09u 0.%09u 0.%09u\0A\00", align 1
@mcp3422_scales = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mcp3422_show_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_show_scales(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mcp3422*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @dev_to_iio_dev(%struct.device* %9)
  %11 = call %struct.mcp3422* @iio_priv(i32 %10)
  store %struct.mcp3422* %11, %struct.mcp3422** %7, align 8
  %12 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %13 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @MCP3422_SAMPLE_RATE(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32**, i32*** @mcp3422_scales, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32**, i32*** @mcp3422_scales, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32**, i32*** @mcp3422_scales, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** @mcp3422_scales, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28, i32 %34, i32 %40)
  ret i32 %41
}

declare dso_local %struct.mcp3422* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i64 @MCP3422_SAMPLE_RATE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

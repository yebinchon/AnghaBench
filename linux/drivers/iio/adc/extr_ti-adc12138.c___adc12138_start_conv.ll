; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c___adc12138_start_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c___adc12138_start_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc12138 = type { i32 }
%struct.iio_chan_spec = type { i64, i64 }

@__adc12138_start_conv.ch_to_mux = internal constant [8 x i32] [i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc12138*, %struct.iio_chan_spec*, i8*, i32)* @__adc12138_start_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__adc12138_start_conv(%struct.adc12138* %0, %struct.iio_chan_spec* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.adc12138*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adc12138* %0, %struct.adc12138** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* @__adc12138_start_conv.ch_to_mux, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 4
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 128
  %22 = or i32 %15, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.adc12138*, %struct.adc12138** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @adc12138_mode_programming(%struct.adc12138* %23, i32 %24, i8* %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @adc12138_mode_programming(%struct.adc12138*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_adc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_adc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc12138 = type { i32 }
%struct.iio_chan_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc12138*, %struct.iio_chan_spec*, i32*)* @adc12138_adc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_adc_conversion(%struct.adc12138* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adc12138*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.adc12138* %0, %struct.adc12138** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.adc12138*, %struct.adc12138** %5, align 8
  %10 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %9, i32 0, i32 0
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.adc12138*, %struct.adc12138** %5, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %14 = call i32 @adc12138_start_conv(%struct.adc12138* %12, %struct.iio_chan_spec* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.adc12138*, %struct.adc12138** %5, align 8
  %21 = call i32 @msecs_to_jiffies(i32 100)
  %22 = call i32 @adc12138_wait_eoc(%struct.adc12138* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.adc12138*, %struct.adc12138** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @adc12138_read_conv_data(%struct.adc12138* %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %25, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @adc12138_start_conv(%struct.adc12138*, %struct.iio_chan_spec*) #1

declare dso_local i32 @adc12138_wait_eoc(%struct.adc12138*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @adc12138_read_conv_data(%struct.adc12138*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

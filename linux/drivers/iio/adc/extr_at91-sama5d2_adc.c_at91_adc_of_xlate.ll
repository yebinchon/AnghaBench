; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.of_phandle_args = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.of_phandle_args*)* @at91_adc_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_of_xlate(%struct.iio_dev* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %4, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @at91_adc_chan_xlate(%struct.iio_dev* %5, i32 %10)
  ret i32 %11
}

declare dso_local i32 @at91_adc_chan_xlate(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

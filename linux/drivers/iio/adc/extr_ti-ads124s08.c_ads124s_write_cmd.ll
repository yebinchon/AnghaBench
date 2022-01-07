; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads124s_private = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ads124s_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads124s_write_cmd(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ads124s_private*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ads124s_private* @iio_priv(%struct.iio_dev* %6)
  store %struct.ads124s_private* %7, %struct.ads124s_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ads124s_private*, %struct.ads124s_private** %5, align 8
  %10 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.ads124s_private*, %struct.ads124s_private** %5, align 8
  %14 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ads124s_private*, %struct.ads124s_private** %5, align 8
  %17 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @spi_write(i32 %15, i32* %19, i32 1)
  ret i32 %20
}

declare dso_local %struct.ads124s_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

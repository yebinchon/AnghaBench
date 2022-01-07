; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_show_scale_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_show_scale_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5592r_state = type { i32** }

@.str = private unnamed_addr constant [17 x i8] c"%d.%09u %d.%09u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @ad5592r_show_scale_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_show_scale_available(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ad5592r_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.ad5592r_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad5592r_state* %11, %struct.ad5592r_state** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %14 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %21 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %28 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ad5592r_state*, %struct.ad5592r_state** %9, align 8
  %35 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %26, i32 %33, i32 %40)
  ret i32 %41
}

declare dso_local %struct.ad5592r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

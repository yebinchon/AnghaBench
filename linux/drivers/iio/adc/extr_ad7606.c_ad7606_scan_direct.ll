; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { i32*, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ad7606_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_scan_direct(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7606_state*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad7606_state* %8, %struct.ad7606_state** %5, align 8
  %9 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %10 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @gpiod_set_value(i32 %11, i32 1)
  %13 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %14 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %13, i32 0, i32 2
  %15 = call i32 @msecs_to_jiffies(i32 1000)
  %16 = call i32 @wait_for_completion_timeout(i32* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %24 = call i32 @ad7606_read_samples(%struct.ad7606_state* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %29 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %38 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gpiod_set_value(i32 %39, i32 0)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ad7606_read_samples(%struct.ad7606_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

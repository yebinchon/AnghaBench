; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_update_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_update_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max1363_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @max1363_update_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_update_scan_mode(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.max1363_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %8 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.max1363_state* %8, %struct.max1363_state** %6, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load %struct.max1363_state*, %struct.max1363_state** %6, align 8
  %11 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @max1363_match_mode(i64* %9, i32 %12)
  %14 = load %struct.max1363_state*, %struct.max1363_state** %6, align 8
  %15 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.max1363_state*, %struct.max1363_state** %6, align 8
  %17 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.max1363_state*, %struct.max1363_state** %6, align 8
  %25 = call i32 @max1363_set_scan_mode(%struct.max1363_state* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @max1363_match_mode(i64*, i32) #1

declare dso_local i32 @max1363_set_scan_mode(%struct.max1363_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_update_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_update_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adjd_s311_data = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @adjd_s311_update_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjd_s311_update_scan_mode(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.adjd_s311_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %8 = call %struct.adjd_s311_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.adjd_s311_data* %8, %struct.adjd_s311_data** %6, align 8
  %9 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %6, align 8
  %10 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %6, align 8
  %19 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %6, align 8
  %21 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.adjd_s311_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

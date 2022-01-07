; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.st_uvis25_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @st_uvis25_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_uvis25_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.st_uvis25_hw*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %58

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %51 [
    i64 128, label %22
  ]

22:                                               ; preds = %20
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev* %23)
  store %struct.st_uvis25_hw* %24, %struct.st_uvis25_hw** %13, align 8
  %25 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %13, align 8
  %26 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %13, align 8
  %31 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @disable_irq(i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %13, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @st_uvis25_read_oneshot(%struct.st_uvis25_hw* %35, i32 %38, i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %13, align 8
  %42 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %13, align 8
  %47 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @enable_irq(i32 %48)
  br label %50

50:                                               ; preds = %45, %34
  br label %54

51:                                               ; preds = %20
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %18
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @st_uvis25_read_oneshot(%struct.st_uvis25_hw*, i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

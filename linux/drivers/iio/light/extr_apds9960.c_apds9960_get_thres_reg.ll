; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_get_thres_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_get_thres_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32 }

@APDS9960_REG_PIHT = common dso_local global i32 0, align 4
@APDS9960_REG_AIHTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@APDS9960_REG_PILT = common dso_local global i32 0, align 4
@APDS9960_REG_AILTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32, i32*)* @apds9960_get_thres_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_get_thres_reg(%struct.iio_chan_spec* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %37 [
    i32 130, label %9
    i32 131, label %23
  ]

9:                                                ; preds = %3
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %16
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @APDS9960_REG_PIHT, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  br label %22

16:                                               ; preds = %9
  %17 = load i32, i32* @APDS9960_REG_AIHTL, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %16, %13
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @APDS9960_REG_PILT, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @APDS9960_REG_AILTL, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %30, %27
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %36, %22
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37, %33, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

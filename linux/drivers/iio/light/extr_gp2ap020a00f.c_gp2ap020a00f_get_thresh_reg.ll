; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_get_thresh_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_get_thresh_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@GP2AP020A00F_PH_L_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_PL_L_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_TH_L_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_TL_L_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32)* @gp2ap020a00f_get_thresh_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_get_thresh_reg(%struct.iio_chan_spec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 129, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @GP2AP020A00F_PH_L_REG, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i32, i32* @GP2AP020A00F_PL_L_REG, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @GP2AP020A00F_TH_L_REG, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %17
  %24 = load i32, i32* @GP2AP020A00F_TL_L_REG, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %23, %21, %15, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

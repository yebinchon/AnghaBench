; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_event_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_event_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.gp2ap020a00f_data = type { i32*, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@GP2AP020A00F_PH_L_REG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @gp2ap020a00f_read_event_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_read_event_val(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.gp2ap020a00f_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.gp2ap020a00f_data* %19, %struct.gp2ap020a00f_data** %15, align 8
  %20 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %22 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @gp2ap020a00f_get_thresh_reg(%struct.iio_chan_spec* %24, i32 %25)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @GP2AP020A00F_PH_L_REG, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %17, align 4
  br label %42

33:                                               ; preds = %7
  %34 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %35 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i64 @GP2AP020A00F_THRESH_VAL_ID(i64 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %44 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %17, align 4
  ret i32 %46
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gp2ap020a00f_get_thresh_reg(%struct.iio_chan_spec*, i32) #1

declare dso_local i64 @GP2AP020A00F_THRESH_VAL_ID(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.gp2ap020a00f_data = type { i32, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_FALLING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_FALLING_EV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @gp2ap020a00f_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gp2ap020a00f_data*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.gp2ap020a00f_data* %12, %struct.gp2ap020a00f_data** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %14 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %49 [
    i32 128, label %19
    i32 129, label %34
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %25 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %26 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %30 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %31 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %23
  br label %52

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %40 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %41 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %45 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %46 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %45, i32 0, i32 1
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %52

49:                                               ; preds = %4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %48, %33
  %53 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %9, align 8
  %54 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

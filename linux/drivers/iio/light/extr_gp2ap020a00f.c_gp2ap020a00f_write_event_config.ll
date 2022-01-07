; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.gp2ap020a00f_data = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_ALS_HIGH_EV_EN = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_ALS_HIGH_EV_DIS = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_ALS_LOW_EV_EN = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_ALS_LOW_EV_DIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @gp2ap020a00f_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gp2ap020a00f_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.gp2ap020a00f_data* %15, %struct.gp2ap020a00f_data** %11, align 8
  %16 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %11, align 8
  %17 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %55 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %5
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @gp2ap020a00f_write_prox_event_config(%struct.iio_dev* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  br label %58

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @GP2AP020A00F_CMD_ALS_HIGH_EV_EN, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @GP2AP020A00F_CMD_ALS_HIGH_EV_DIS, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %12, align 4
  %39 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  br label %54

42:                                               ; preds = %26
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @GP2AP020A00F_CMD_ALS_LOW_EV_EN, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @GP2AP020A00F_CMD_ALS_LOW_EV_DIS, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %12, align 4
  %51 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %49, %37
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %54, %22
  %59 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %11, align 8
  %60 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %13, align 4
  ret i32 %62
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gp2ap020a00f_write_prox_event_config(%struct.iio_dev*, i32) #1

declare dso_local i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

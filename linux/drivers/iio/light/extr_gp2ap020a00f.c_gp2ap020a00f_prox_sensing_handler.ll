; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_prox_sensing_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_prox_sensing_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.gp2ap020a00f_data = type { i32 }

@GP2AP020A00F_OP_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@GP2AP020A00F_PROX_DETECT = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@GP2AP020A00F_SCAN_MODE_PROXIMITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_ROC = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gp2ap020a00f_prox_sensing_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_prox_sensing_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.gp2ap020a00f_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.gp2ap020a00f_data* %13, %struct.gp2ap020a00f_data** %7, align 8
  %14 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %7, align 8
  %15 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %7, align 8
  %25 = call i64 @gp2ap020a00f_prox_detect_enabled(%struct.gp2ap020a00f_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @GP2AP020A00F_PROX_DETECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = load i32, i32* @IIO_PROXIMITY, align 4
  %35 = load i32, i32* @GP2AP020A00F_SCAN_MODE_PROXIMITY, align 4
  %36 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %37 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %38 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i32 @iio_get_time_ns(%struct.iio_dev* %39)
  %41 = call i32 @iio_push_event(%struct.iio_dev* %33, i32 %38, i32 %40)
  br label %52

42:                                               ; preds = %27
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = load i32, i32* @IIO_PROXIMITY, align 4
  %45 = load i32, i32* @GP2AP020A00F_SCAN_MODE_PROXIMITY, align 4
  %46 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %47 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %48 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = call i32 @iio_get_time_ns(%struct.iio_dev* %49)
  %51 = call i32 @iio_push_event(%struct.iio_dev* %43, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %42, %32
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @gp2ap020a00f_prox_detect_enabled(%struct.gp2ap020a00f_data*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

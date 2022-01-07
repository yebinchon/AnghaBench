; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_STATUS_ADDR = common dso_local global i32 0, align 4
@SCA3000_INT_STATUS_FREE_FALL = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X_AND_Y_AND_Z = common dso_local global i32 0, align 4
@IIO_EV_TYPE_MAG = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@SCA3000_INT_STATUS_Y_TRIGGER = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@SCA3000_INT_STATUS_X_TRIGGER = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@SCA3000_INT_STATUS_Z_TRIGGER = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sca3000_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.sca3000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.sca3000_state* %13, %struct.sca3000_state** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call i32 @iio_get_time_ns(%struct.iio_dev* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %17 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %20 = load i32, i32* @SCA3000_REG_INT_STATUS_ADDR, align 4
  %21 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %19, i32 %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %23 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %93

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = call i32 @sca3000_ring_int_process(i32 %34, %struct.iio_dev* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SCA3000_INT_STATUS_FREE_FALL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %43 = load i32, i32* @IIO_ACCEL, align 4
  %44 = load i32, i32* @IIO_MOD_X_AND_Y_AND_Z, align 4
  %45 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %46 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %47 = call i32 @IIO_MOD_EVENT_CODE(i32 %43, i32 0, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @iio_push_event(%struct.iio_dev* %42, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %33
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SCA3000_INT_STATUS_Y_TRIGGER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = load i32, i32* @IIO_ACCEL, align 4
  %58 = load i32, i32* @IIO_MOD_Y, align 4
  %59 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %60 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %61 = call i32 @IIO_MOD_EVENT_CODE(i32 %57, i32 0, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @iio_push_event(%struct.iio_dev* %56, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SCA3000_INT_STATUS_X_TRIGGER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %71 = load i32, i32* @IIO_ACCEL, align 4
  %72 = load i32, i32* @IIO_MOD_X, align 4
  %73 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %74 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %75 = call i32 @IIO_MOD_EVENT_CODE(i32 %71, i32 0, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @iio_push_event(%struct.iio_dev* %70, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @SCA3000_INT_STATUS_Z_TRIGGER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %85 = load i32, i32* @IIO_ACCEL, align 4
  %86 = load i32, i32* @IIO_MOD_Z, align 4
  %87 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %88 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %89 = call i32 @IIO_MOD_EVENT_CODE(i32 %85, i32 0, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @iio_push_event(%struct.iio_dev* %84, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %78
  br label %93

93:                                               ; preds = %92, %32
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %94
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sca3000_ring_int_process(i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

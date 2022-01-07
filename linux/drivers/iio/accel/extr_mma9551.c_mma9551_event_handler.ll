; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mma9551_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"irq triggered on unused line %d\0A\00", align 1
@MMA9551_TILT_YZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XY_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_APPID_TILT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"error %d reading tilt register in IRQ\0A\00", align 1
@IIO_INCLI = common dso_local global i32 0, align 4
@IIO_EV_TYPE_ROC = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mma9551_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.mma9551_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iio_dev*
  store %struct.iio_dev* %13, %struct.iio_dev** %5, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mma9551_data* %15, %struct.mma9551_data** %6, align 8
  store i32 -1, i32* %9, align 4
  %16 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %17 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %25 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %19

38:                                               ; preds = %32, %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %43 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %47 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %87

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %60 [
    i32 130, label %54
    i32 129, label %56
    i32 128, label %58
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @MMA9551_TILT_YZ_ANG_REG, align 4
  store i32 %55, i32* %10, align 4
  br label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @MMA9551_TILT_XZ_ANG_REG, align 4
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @MMA9551_TILT_XY_ANG_REG, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %52, %58, %56, %54
  %61 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %62 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @MMA9551_APPID_TILT, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @mma9551_read_status_byte(%struct.TYPE_2__* %63, i32 %64, i32 %65, i32* %11)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %71 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %87

76:                                               ; preds = %60
  %77 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %78 = load i32, i32* @IIO_INCLI, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %82 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %83 = call i32 @IIO_MOD_EVENT_CODE(i32 %78, i32 0, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %85 = call i32 @iio_get_time_ns(%struct.iio_dev* %84)
  %86 = call i32 @iio_push_event(%struct.iio_dev* %77, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %76, %69, %41
  %88 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %89 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mma9551_read_status_byte(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

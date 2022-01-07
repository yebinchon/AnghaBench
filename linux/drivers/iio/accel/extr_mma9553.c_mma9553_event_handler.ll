; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mma9553_data = type { i64, i64, i32, i32 }
%struct.mma9553_event = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IIO_ACTIVITY = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_STEPS = common dso_local global i32 0, align 4
@IIO_NO_MOD = common dso_local global i32 0, align 4
@IIO_EV_DIR_NONE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_CHANGE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mma9553_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mma9553_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mma9553_event*, align 8
  %11 = alloca %struct.mma9553_event*, align 8
  %12 = alloca %struct.mma9553_event*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iio_dev*
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.mma9553_data* %17, %struct.mma9553_data** %7, align 8
  %18 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %19 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %22 = call i32 @mma9553_read_activity_stepcnt(%struct.mma9553_data* %21, i64* %9, i64* %8)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %27 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %135

30:                                               ; preds = %2
  %31 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %32 = load i32, i32* @IIO_ACTIVITY, align 4
  %33 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %34 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mma9553_activity_to_mod(i64 %35)
  %37 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %38 = call %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data* %31, i32 %32, i32 %36, i32 %37)
  store %struct.mma9553_event* %38, %struct.mma9553_event** %11, align 8
  %39 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %40 = load i32, i32* @IIO_ACTIVITY, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mma9553_activity_to_mod(i64 %41)
  %43 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %44 = call %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data* %39, i32 %40, i32 %42, i32 %43)
  store %struct.mma9553_event* %44, %struct.mma9553_event** %10, align 8
  %45 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %46 = load i32, i32* @IIO_STEPS, align 4
  %47 = load i32, i32* @IIO_NO_MOD, align 4
  %48 = load i32, i32* @IIO_EV_DIR_NONE, align 4
  %49 = call %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data* %45, i32 %46, i32 %47, i32 %48)
  store %struct.mma9553_event* %49, %struct.mma9553_event** %12, align 8
  %50 = load %struct.mma9553_event*, %struct.mma9553_event** %12, align 8
  %51 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %30
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %57 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %63 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = load i32, i32* @IIO_STEPS, align 4
  %66 = load i32, i32* @IIO_NO_MOD, align 4
  %67 = load i32, i32* @IIO_EV_DIR_NONE, align 4
  %68 = load i32, i32* @IIO_EV_TYPE_CHANGE, align 4
  %69 = call i32 @IIO_EVENT_CODE(i32 %65, i32 0, i32 %66, i32 %67, i32 %68, i32 0, i32 0, i32 0)
  %70 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %71 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iio_push_event(%struct.iio_dev* %64, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %54, %30
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %77 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %74
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %83 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.mma9553_event*, %struct.mma9553_event** %11, align 8
  %85 = icmp ne %struct.mma9553_event* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load %struct.mma9553_event*, %struct.mma9553_event** %11, align 8
  %88 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = load i32, i32* @IIO_ACTIVITY, align 4
  %94 = load %struct.mma9553_event*, %struct.mma9553_event** %11, align 8
  %95 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %100 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %101 = call i32 @IIO_EVENT_CODE(i32 %93, i32 0, i32 %98, i32 %99, i32 %100, i32 0, i32 0, i32 0)
  %102 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %103 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @iio_push_event(%struct.iio_dev* %92, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %91, %86, %80
  %107 = load %struct.mma9553_event*, %struct.mma9553_event** %10, align 8
  %108 = icmp ne %struct.mma9553_event* %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load %struct.mma9553_event*, %struct.mma9553_event** %10, align 8
  %111 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %116 = load i32, i32* @IIO_ACTIVITY, align 4
  %117 = load %struct.mma9553_event*, %struct.mma9553_event** %10, align 8
  %118 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %123 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %124 = call i32 @IIO_EVENT_CODE(i32 %116, i32 0, i32 %121, i32 %122, i32 %123, i32 0, i32 0, i32 0)
  %125 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %126 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @iio_push_event(%struct.iio_dev* %115, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %114, %109, %106
  br label %130

130:                                              ; preds = %129, %74
  %131 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %132 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %130, %25
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9553_read_activity_stepcnt(%struct.mma9553_data*, i64*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data*, i32, i32, i32) #1

declare dso_local i32 @mma9553_activity_to_mod(i64) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_EVENT_CODE(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

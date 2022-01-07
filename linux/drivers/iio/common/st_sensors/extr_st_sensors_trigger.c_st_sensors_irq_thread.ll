; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_trigger.c_st_sensors_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_trigger.c_st_sensors_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.st_sensor_data = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"spurious IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"more samples came in during polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_sensors_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_sensors_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.st_sensor_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_trigger*
  store %struct.iio_trigger* %10, %struct.iio_trigger** %6, align 8
  %11 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %12 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.st_sensor_data* %14, %struct.st_sensor_data** %8, align 8
  %15 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %16 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %22 = call i64 @st_sensors_new_samples_available(%struct.iio_dev* %20, %struct.st_sensor_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @iio_trigger_poll_chained(i8* %25)
  br label %33

27:                                               ; preds = %19, %2
  %28 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %29 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %66

33:                                               ; preds = %24
  %34 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %35 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %53, %40
  %42 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %43 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %49 = call i64 @st_sensors_new_samples_available(%struct.iio_dev* %47, %struct.st_sensor_data* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %55 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = call i32 @iio_get_time_ns(%struct.iio_dev* %58)
  %60 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %61 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @iio_trigger_poll_chained(i8* %62)
  br label %41

64:                                               ; preds = %51
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %38, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @st_sensors_new_samples_available(%struct.iio_dev*, %struct.st_sensor_data*) #1

declare dso_local i32 @iio_trigger_poll_chained(i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

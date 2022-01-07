; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.kmx61_data = type { i32, i32, i64 }

@KMX61_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @kmx61_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kmx61_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev* %14)
  store %struct.kmx61_data* %15, %struct.kmx61_data** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %20 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %65

24:                                               ; preds = %18, %5
  %25 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %26 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %32 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %37 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %60

38:                                               ; preds = %30, %24
  %39 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @KMX61_ACC, align 4
  %42 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @kmx61_setup_any_motion_interrupt(%struct.kmx61_data* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %54 = load i32, i32* @KMX61_ACC, align 4
  %55 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %53, i32 0, i32 %54)
  br label %60

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %59 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52, %45, %35
  %61 = load %struct.kmx61_data*, %struct.kmx61_data** %12, align 8
  %62 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %23
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmx61_set_power_state(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @kmx61_setup_any_motion_interrupt(%struct.kmx61_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

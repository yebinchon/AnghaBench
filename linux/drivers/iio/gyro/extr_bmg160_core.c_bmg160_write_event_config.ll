; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmg160_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @bmg160_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bmg160_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmg160_data* %15, %struct.bmg160_data** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %20 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %72

24:                                               ; preds = %18, %5
  %25 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %26 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %32 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %37 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %39 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  store i32 0, i32* %6, align 4
  br label %72

41:                                               ; preds = %30, %24
  %42 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %49 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %72

52:                                               ; preds = %41
  %53 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @bmg160_setup_any_motion_interrupt(%struct.bmg160_data* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %60 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %59, i32 0)
  %61 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %62 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %68 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.bmg160_data*, %struct.bmg160_data** %12, align 8
  %70 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %65, %58, %47, %35, %23
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bmg160_set_power_state(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_setup_any_motion_interrupt(%struct.bmg160_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

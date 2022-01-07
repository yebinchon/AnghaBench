; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i64, i32 }
%struct.iio_chan_spec = type { i64 }

@US5182D_ONESHOT = common dso_local global i64 0, align 8
@IIO_LIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*, %struct.iio_chan_spec*)* @us5182d_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_read_value(%struct.us5182d_data* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %8 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %9 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %12 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @US5182D_ONESHOT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %18 = call i32 @us5182d_oneshot_en(%struct.us5182d_data* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %60

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %25 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %60

29:                                               ; preds = %23
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IIO_LIGHT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %37 = call i32 @us5182d_get_als(%struct.us5182d_data* %36)
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %40 = call i32 @us5182d_get_px(%struct.us5182d_data* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %48 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %54 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %59 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %51, %28, %21
  %61 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %62 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @us5182d_oneshot_en(%struct.us5182d_data*) #1

declare dso_local i32 @us5182d_set_power_state(%struct.us5182d_data*, i32) #1

declare dso_local i32 @us5182d_get_als(%struct.us5182d_data*) #1

declare dso_local i32 @us5182d_get_px(%struct.us5182d_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

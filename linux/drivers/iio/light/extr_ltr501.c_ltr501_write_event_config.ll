; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ltr501_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @ltr501_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ltr501_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ltr501_data* %15, %struct.ltr501_data** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %57

24:                                               ; preds = %18, %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %54 [
    i32 129, label %28
    i32 128, label %41
  ]

28:                                               ; preds = %24
  %29 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %30 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %33 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @regmap_field_write(i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %38 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %24
  %42 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %43 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %46 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @regmap_field_write(i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %51 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %24
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %41, %28, %21
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

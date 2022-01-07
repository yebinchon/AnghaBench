; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.atlas_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @atlas_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.atlas_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.atlas_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.atlas_data* %7, %struct.atlas_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.atlas_data*, %struct.atlas_data** %4, align 8
  %16 = call i32 @atlas_set_interrupt(%struct.atlas_data* %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %14
  %22 = load %struct.atlas_data*, %struct.atlas_data** %4, align 8
  %23 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_mark_last_busy(i32* %25)
  %27 = load %struct.atlas_data*, %struct.atlas_data** %4, align 8
  %28 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_put_autosuspend(i32* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %19, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.atlas_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

declare dso_local i32 @atlas_set_interrupt(%struct.atlas_data*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

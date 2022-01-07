; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.hdc100x_data = type { i32 }

@HDC100X_REG_CONFIG_ACQ_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @hdc100x_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdc100x_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.hdc100x_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.hdc100x_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.hdc100x_data* %7, %struct.hdc100x_data** %4, align 8
  %8 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %9 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %12 = load i32, i32* @HDC100X_REG_CONFIG_ACQ_MODE, align 4
  %13 = load i32, i32* @HDC100X_REG_CONFIG_ACQ_MODE, align 4
  %14 = call i32 @hdc100x_update_config(%struct.hdc100x_data* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %16 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %24 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.hdc100x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdc100x_update_config(%struct.hdc100x_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

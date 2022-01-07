; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_set_trigger_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_set_trigger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @sx9500_set_trigger_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_set_trigger_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.sx9500_data*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.sx9500_data* %11, %struct.sx9500_data** %6, align 8
  %12 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %13 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %19 = call i32 @sx9500_inc_data_rdy_users(%struct.sx9500_data* %18)
  store i32 %19, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %22 = call i32 @sx9500_dec_data_rdy_users(%struct.sx9500_data* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %30 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %33 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sx9500_inc_data_rdy_users(%struct.sx9500_data*) #1

declare dso_local i32 @sx9500_dec_data_rdy_users(%struct.sx9500_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

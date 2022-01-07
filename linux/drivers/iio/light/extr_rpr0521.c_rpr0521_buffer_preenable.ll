; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_buffer_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_buffer_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.rpr0521_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RPR0521_MODE_PXS_MASK = common dso_local global i32 0, align 4
@RPR0521_MODE_ALS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"_buffer_preenable fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @rpr0521_buffer_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_buffer_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpr0521_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.rpr0521_data* @iio_priv(%struct.iio_dev* %5)
  store %struct.rpr0521_data* %6, %struct.rpr0521_data** %4, align 8
  %7 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %8 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %11 = load i32, i32* @RPR0521_MODE_PXS_MASK, align 4
  %12 = load i32, i32* @RPR0521_MODE_ALS_MASK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rpr0521_set_power_state(%struct.rpr0521_data* %10, i32 1, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %16 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %22 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.rpr0521_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpr0521_set_power_state(%struct.rpr0521_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

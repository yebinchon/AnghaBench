; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_set_trigger_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_set_trigger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mxc4005_data = type { i32, i32, i32, i32 }

@MXC4005_REG_INT_MASK1 = common dso_local global i32 0, align 4
@MXC4005_REG_INT_MASK1_BIT_DRDYE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to update reg_int_mask1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @mxc4005_set_trigger_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc4005_set_trigger_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mxc4005_data*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %10 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.mxc4005_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.mxc4005_data* %12, %struct.mxc4005_data** %7, align 8
  %13 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %14 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %20 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MXC4005_REG_INT_MASK1, align 4
  %23 = load i32, i32* @MXC4005_REG_INT_MASK1_BIT_DRDYE, align 4
  %24 = call i32 @regmap_write(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %27 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MXC4005_REG_INT_MASK1, align 4
  %30 = load i32, i32* @MXC4005_REG_INT_MASK1_BIT_DRDYE, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @regmap_write(i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %38 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %41 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %48 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mxc4005_data*, %struct.mxc4005_data** %7, align 8
  %50 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.mxc4005_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

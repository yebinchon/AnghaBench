; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@DPS310_MEAS_CFG = common dso_local global i32 0, align 4
@DPS310_TMP_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_read_temp_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_read_temp_raw(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %8 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %9 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %8, i32 0, i32 0
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINTR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %17 = call i32 @dps310_get_temp_samp_freq(%struct.dps310_data* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DPS310_POLL_TIMEOUT_US(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %21 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DPS310_MEAS_CFG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DPS310_TMP_RDY, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DPS310_POLL_SLEEP_US(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @regmap_read_poll_timeout(i32 %22, i32 %23, i32 %24, i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %37 = call i32 @dps310_read_temp_ready(%struct.dps310_data* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %40 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dps310_get_temp_samp_freq(%struct.dps310_data*) #1

declare dso_local i32 @DPS310_POLL_TIMEOUT_US(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPS310_POLL_SLEEP_US(i32) #1

declare dso_local i32 @dps310_read_temp_ready(%struct.dps310_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

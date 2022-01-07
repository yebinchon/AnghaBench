; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_pres_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_pres_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@DPS310_MEAS_CFG = common dso_local global i32 0, align 4
@DPS310_PRS_RDY = common dso_local global i32 0, align 4
@DPS310_PRS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_read_pres_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_read_pres_raw(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %10 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %11 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %10, i32 0, i32 0
  %12 = call i64 @mutex_lock_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINTR, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %19 = call i32 @dps310_get_pres_samp_freq(%struct.dps310_data* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DPS310_POLL_TIMEOUT_US(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %23 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DPS310_MEAS_CFG, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DPS310_PRS_RDY, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @DPS310_POLL_SLEEP_US(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_read_poll_timeout(i32 %24, i32 %25, i32 %26, i32 %29, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %62

37:                                               ; preds = %17
  %38 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %39 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DPS310_PRS_BASE, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = call i32 @regmap_bulk_read(i32 %40, i32 %41, i32* %42, i32 12)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %62

47:                                               ; preds = %37
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %54, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sign_extend32(i32 %58, i32 23)
  %60 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %61 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %47, %46, %36
  %63 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %64 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dps310_get_pres_samp_freq(%struct.dps310_data*) #1

declare dso_local i32 @DPS310_POLL_TIMEOUT_US(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPS310_POLL_SLEEP_US(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

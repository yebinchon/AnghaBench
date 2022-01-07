; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_read_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_read_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmc5843_data = type { i32, i32 }

@HMC5843_DATA_OUT_MSB_REGS = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmc5843_data*, i32, i32*)* @hmc5843_read_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_read_measurement(%struct.hmc5843_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hmc5843_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.hmc5843_data* %0, %struct.hmc5843_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hmc5843_data*, %struct.hmc5843_data** %5, align 8
  %11 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.hmc5843_data*, %struct.hmc5843_data** %5, align 8
  %14 = call i32 @hmc5843_wait_measurement(%struct.hmc5843_data* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.hmc5843_data*, %struct.hmc5843_data** %5, align 8
  %19 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.hmc5843_data*, %struct.hmc5843_data** %5, align 8
  %24 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HMC5843_DATA_OUT_MSB_REGS, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %28 = call i32 @regmap_bulk_read(i32 %25, i32 %26, i32* %27, i32 12)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.hmc5843_data*, %struct.hmc5843_data** %5, align 8
  %30 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = call i32 @sign_extend32(i32 %41, i32 15)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %34, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hmc5843_wait_measurement(%struct.hmc5843_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

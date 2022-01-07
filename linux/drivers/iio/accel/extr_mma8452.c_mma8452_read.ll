; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma8452_data = type { i32 }

@MMA8452_OUT_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma8452_data*, i32*)* @mma8452_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_read(%struct.mma8452_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mma8452_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mma8452_data* %0, %struct.mma8452_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %8 = call i32 @mma8452_drdy(%struct.mma8452_data* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %15 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mma8452_set_runtime_pm_state(i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %13
  %23 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %24 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MMA8452_OUT_X, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @i2c_smbus_read_i2c_block_data(i32 %25, i32 %26, i32 12, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %30 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mma8452_set_runtime_pm_state(i32 %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %20, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mma8452_drdy(%struct.mma8452_data*) #1

declare dso_local i32 @mma8452_set_runtime_pm_state(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

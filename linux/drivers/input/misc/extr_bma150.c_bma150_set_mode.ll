; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i64, i32 }

@BMA150_WAKE_UP_POS = common dso_local global i32 0, align 4
@BMA150_WAKE_UP_MSK = common dso_local global i32 0, align 4
@BMA150_WAKE_UP_REG = common dso_local global i32 0, align 4
@BMA150_SLEEP_POS = common dso_local global i32 0, align 4
@BMA150_SLEEP_MSK = common dso_local global i32 0, align 4
@BMA150_SLEEP_REG = common dso_local global i32 0, align 4
@BMA150_MODE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*, i64)* @bma150_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_set_mode(%struct.bma150_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bma150_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %8 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @BMA150_WAKE_UP_POS, align 4
  %12 = load i32, i32* @BMA150_WAKE_UP_MSK, align 4
  %13 = load i32, i32* @BMA150_WAKE_UP_REG, align 4
  %14 = call i32 @bma150_set_reg_bits(i32 %9, i64 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %21 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @BMA150_SLEEP_POS, align 4
  %25 = load i32, i32* @BMA150_SLEEP_MSK, align 4
  %26 = load i32, i32* @BMA150_SLEEP_REG, align 4
  %27 = call i32 @bma150_set_reg_bits(i32 %22, i64 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @BMA150_MODE_NORMAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @usleep_range(i32 2000, i32 2100)
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.bma150_data*, %struct.bma150_data** %4, align 8
  %41 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %30, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @bma150_set_reg_bits(i32, i64, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

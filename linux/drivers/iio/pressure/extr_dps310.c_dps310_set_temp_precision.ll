; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_set_temp_precision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_set_temp_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DPS310_TMP_SHIFT_EN = common dso_local global i32 0, align 4
@DPS310_CFG_REG = common dso_local global i32 0, align 4
@DPS310_TMP_CFG = common dso_local global i32 0, align 4
@DPS310_TMP_PRC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*, i32)* @dps310_set_temp_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_set_temp_precision(%struct.dps310_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dps310_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 128
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 16
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @DPS310_TMP_SHIFT_EN, align 4
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.dps310_data*, %struct.dps310_data** %4, align 8
  %25 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DPS310_CFG_REG, align 4
  %28 = load i32, i32* @DPS310_TMP_SHIFT_EN, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @regmap_write_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.dps310_data*, %struct.dps310_data** %4, align 8
  %37 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DPS310_TMP_CFG, align 4
  %40 = load i32, i32* @DPS310_TMP_PRC_BITS, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ilog2(i32 %41)
  %43 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %33, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

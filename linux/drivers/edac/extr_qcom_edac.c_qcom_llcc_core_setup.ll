; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_core_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_core_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@CMN_INTERRUPT_2_ENABLE = common dso_local global i32 0, align 4
@TRP0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@TRP_INTERRUPT_0_ENABLE = common dso_local global i32 0, align 4
@SB_DB_TRP_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SB_ERROR_THRESHOLD = common dso_local global i32 0, align 4
@SB_ERROR_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@DRP_ECC_ERROR_CFG = common dso_local global i32 0, align 4
@DRP0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@DRP_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SB_DB_DRP_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @qcom_llcc_core_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_llcc_core_setup(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  %6 = load %struct.regmap*, %struct.regmap** %3, align 8
  %7 = load i32, i32* @CMN_INTERRUPT_2_ENABLE, align 4
  %8 = load i32, i32* @TRP0_INTERRUPT_ENABLE, align 4
  %9 = load i32, i32* @TRP0_INTERRUPT_ENABLE, align 4
  %10 = call i32 @regmap_update_bits(%struct.regmap* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @TRP_INTERRUPT_0_ENABLE, align 4
  %18 = load i32, i32* @SB_DB_TRP_INTERRUPT_ENABLE, align 4
  %19 = load i32, i32* @SB_DB_TRP_INTERRUPT_ENABLE, align 4
  %20 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load i32, i32* @SB_ERROR_THRESHOLD, align 4
  %27 = load i32, i32* @SB_ERROR_THRESHOLD_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.regmap*, %struct.regmap** %3, align 8
  %30 = load i32, i32* @DRP_ECC_ERROR_CFG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @regmap_write(%struct.regmap* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %25
  %38 = load %struct.regmap*, %struct.regmap** %3, align 8
  %39 = load i32, i32* @CMN_INTERRUPT_2_ENABLE, align 4
  %40 = load i32, i32* @DRP0_INTERRUPT_ENABLE, align 4
  %41 = load i32, i32* @DRP0_INTERRUPT_ENABLE, align 4
  %42 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %53

47:                                               ; preds = %37
  %48 = load %struct.regmap*, %struct.regmap** %3, align 8
  %49 = load i32, i32* @DRP_INTERRUPT_ENABLE, align 4
  %50 = load i32, i32* @SB_DB_DRP_INTERRUPT_ENABLE, align 4
  %51 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %45, %35, %23, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

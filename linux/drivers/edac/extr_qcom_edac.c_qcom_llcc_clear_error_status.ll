; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_clear_error_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_clear_error_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llcc_drv_data = type { i32 }

@DRP_INTERRUPT_CLEAR = common dso_local global i32 0, align 4
@DRP_TRP_INT_CLEAR = common dso_local global i32 0, align 4
@DRP_ECC_ERROR_CNTR_CLEAR = common dso_local global i32 0, align 4
@DRP_TRP_CNT_CLEAR = common dso_local global i32 0, align 4
@TRP_INTERRUPT_0_CLEAR = common dso_local global i32 0, align 4
@TRP_ECC_ERROR_CNTR_CLEAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@EDAC_LLCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected error type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.llcc_drv_data*)* @qcom_llcc_clear_error_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_llcc_clear_error_status(i32 %0, %struct.llcc_drv_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.llcc_drv_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.llcc_drv_data* %1, %struct.llcc_drv_data** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %54 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %31
    i32 128, label %31
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %5, align 8
  %10 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DRP_INTERRUPT_CLEAR, align 4
  %13 = load i32, i32* @DRP_TRP_INT_CLEAR, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %8
  %20 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %5, align 8
  %21 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRP_ECC_ERROR_CNTR_CLEAR, align 4
  %24 = load i32, i32* @DRP_TRP_CNT_CLEAR, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %19
  br label %61

31:                                               ; preds = %2, %2
  %32 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %5, align 8
  %33 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TRP_INTERRUPT_0_CLEAR, align 4
  %36 = load i32, i32* @DRP_TRP_INT_CLEAR, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %31
  %43 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %5, align 8
  %44 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TRP_ECC_ERROR_CNTR_CLEAR, align 4
  %47 = load i32, i32* @DRP_TRP_CNT_CLEAR, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %42
  br label %61

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @KERN_CRIT, align 4
  %58 = load i32, i32* @EDAC_LLCC, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @edac_printk(i32 %57, i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %53, %30
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %51, %40, %28, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

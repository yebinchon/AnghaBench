; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_sec_ptbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_sec_ptbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@qcom_iommu_sec_ptbl_init.allocated = internal global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to get iommu secure pgtable size (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"iommu sec: pgtable size: %zu\0A\00", align 1
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to allocate %zu bytes for pgtable\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to init iommu pgtable (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @qcom_iommu_sec_ptbl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_sec_ptbl_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @qcom_iommu_sec_ptbl_init.allocated, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @qcom_scm_iommu_secure_ptbl_size(i32 %14, i64* %4)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %13
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @dma_alloc_attrs(%struct.device* %28, i64 %29, i32* %7, i32 %30, i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %23
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @qcom_scm_iommu_secure_ptbl_init(i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %54

53:                                               ; preds = %42
  store i32 1, i32* @qcom_iommu_sec_ptbl_init.allocated, align 4
  store i32 0, i32* %2, align 4
  br label %62

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @dma_free_attrs(%struct.device* %55, i64 %56, i8* %57, i32 %58, i64 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %54, %53, %35, %18, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @qcom_scm_iommu_secure_ptbl_size(i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i32 @qcom_scm_iommu_secure_ptbl_init(i32, i64, i32) #1

declare dso_local i32 @dma_free_attrs(%struct.device*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

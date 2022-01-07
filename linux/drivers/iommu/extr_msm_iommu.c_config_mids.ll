; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_config_mids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_config_mids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_iommu_dev = type { i32 }
%struct.msm_iommu_ctx_dev = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_iommu_dev*, %struct.msm_iommu_ctx_dev*)* @config_mids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_mids(%struct.msm_iommu_dev* %0, %struct.msm_iommu_ctx_dev* %1) #0 {
  %3 = alloca %struct.msm_iommu_dev*, align 8
  %4 = alloca %struct.msm_iommu_ctx_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msm_iommu_dev* %0, %struct.msm_iommu_dev** %3, align 8
  store %struct.msm_iommu_ctx_dev* %1, %struct.msm_iommu_ctx_dev** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %4, align 8
  %11 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %4, align 8
  %16 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %4, align 8
  %23 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %26 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @SET_M2VCBR_N(i32 %27, i32 %28, i32 0)
  %30 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %31 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SET_CBACR_N(i32 %32, i32 %33, i32 0)
  %35 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %36 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @SET_VMID(i32 %37, i32 %38, i32 0)
  %40 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %41 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SET_CBNDX(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %47 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SET_CBVMID(i32 %48, i32 %49, i32 0)
  %51 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %52 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @SET_CONTEXTIDR_ASID(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %58 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @SET_NSCFG(i32 %59, i32 %60, i32 3)
  br label %62

62:                                               ; preds = %14
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %8

65:                                               ; preds = %8
  ret void
}

declare dso_local i32 @SET_M2VCBR_N(i32, i32, i32) #1

declare dso_local i32 @SET_CBACR_N(i32, i32, i32) #1

declare dso_local i32 @SET_VMID(i32, i32, i32) #1

declare dso_local i32 @SET_CBNDX(i32, i32, i32) #1

declare dso_local i32 @SET_CBVMID(i32, i32, i32) #1

declare dso_local i32 @SET_CONTEXTIDR_ASID(i32, i32, i32) #1

declare dso_local i32 @SET_NSCFG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

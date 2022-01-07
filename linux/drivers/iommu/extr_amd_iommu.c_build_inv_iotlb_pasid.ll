; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iotlb_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iotlb_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_cmd = type { i32* }

@CMD_INV_IOMMU_PAGES_GN_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_SIZE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOTLB_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_cmd*, i8*, i32, i32, i32, i32)* @build_inv_iotlb_pasid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_inv_iotlb_pasid(%struct.iommu_cmd* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iommu_cmd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iommu_cmd* %0, %struct.iommu_cmd** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %14 = call i32 @memset(%struct.iommu_cmd* %13, i32 0, i32 8)
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, -4096
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 16
  %29 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 255
  %37 = shl i32 %36, 24
  %38 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 255
  %52 = shl i32 %51, 16
  %53 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @lower_32_bits(i32 %59)
  %61 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @CMD_INV_IOMMU_PAGES_GN_MASK, align 4
  %66 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @upper_32_bits(i32 %72)
  %74 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %6
  %81 = load i32, i32* @CMD_INV_IOMMU_PAGES_SIZE_MASK, align 4
  %82 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %6
  %89 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %90 = load i32, i32* @CMD_INV_IOTLB_PAGES, align 4
  %91 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %89, i32 %90)
  ret void
}

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

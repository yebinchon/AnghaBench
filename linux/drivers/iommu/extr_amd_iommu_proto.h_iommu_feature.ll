; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_proto.h_iommu_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_proto.h_iommu_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32 }

@IOMMU_CAP_EFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, i32)* @iommu_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_feature(%struct.amd_iommu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %7 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IOMMU_CAP_EFR, align 4
  %10 = shl i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %16 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_zap_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_zap_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32* }

@RK_MMU_ZAP_ONE_LINE = common dso_local global i32 0, align 4
@SPAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_iommu*, i64, i64)* @rk_iommu_zap_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iommu_zap_lines(%struct.rk_iommu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rk_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rk_iommu* %0, %struct.rk_iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rk_iommu*, %struct.rk_iommu** %4, align 8
  %16 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %36, %19
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.rk_iommu*, %struct.rk_iommu** %4, align 8
  %27 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RK_MMU_ZAP_ONE_LINE, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @rk_iommu_write(i32 %32, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i64, i64* @SPAGE_SIZE, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %9, align 8
  br label %21

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @rk_iommu_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

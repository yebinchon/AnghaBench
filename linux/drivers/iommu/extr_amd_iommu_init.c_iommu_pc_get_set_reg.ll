; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_pc_get_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_pc_get_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32, i64 }

@amd_iommu_pc_present = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MMIO_CNTR_REG_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, i32, i32, i32, i32*, i32)* @iommu_pc_get_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_pc_get_set_reg(%struct.amd_iommu* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amd_iommu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @amd_iommu_pc_present, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %124

22:                                               ; preds = %6
  %23 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %24 = icmp ne %struct.amd_iommu* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 40
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 7
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = phi i1 [ true, %25 ], [ true, %22 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %124

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = or i32 64, %41
  %43 = shl i32 %42, 12
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %43, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %14, align 8
  %50 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %51 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 64, %52
  %54 = shl i32 %53, 12
  %55 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %56 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  %60 = or i32 %59, 40
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @MMIO_CNTR_REG_OFFSET, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %40
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %40
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %124

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @GENMASK_ULL(i32 47, i32 0)
  %79 = and i32 %77, %78
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = trunc i64 %81 to i32
  %83 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %84 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i32, i32* %16, align 4
  %90 = ashr i32 %89, 32
  %91 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %92 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = add nsw i64 %93, %94
  %96 = add nsw i64 %95, 4
  %97 = call i32 @writel(i32 %90, i64 %96)
  br label %123

98:                                               ; preds = %72
  %99 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %100 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %101, %102
  %104 = add nsw i64 %103, 4
  %105 = call i32 @readl(i64 %104)
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 32
  store i32 %109, i32* %107, align 4
  %110 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  %111 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @readl(i64 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  %119 = call i32 @GENMASK_ULL(i32 47, i32 0)
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %98, %75
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %69, %37, %19
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

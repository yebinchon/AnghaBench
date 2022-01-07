; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_prot_to_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_prot_to_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_cfg = type { i32 }

@IO_PGTABLE_QUIRK_NO_PERMS = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_NG = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_S = common dso_local global i32 0, align 4
@IOMMU_MMIO = common dso_local global i32 0, align 4
@ARM_V7S_PTE_AF = common dso_local global i32 0, align 4
@IOMMU_PRIV = common dso_local global i32 0, align 4
@ARM_V7S_PTE_AP_UNPRIV = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@ARM_V7S_PTE_AP_RDONLY = common dso_local global i32 0, align 4
@IOMMU_NOEXEC = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_B = common dso_local global i32 0, align 4
@IOMMU_CACHE = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_C = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_PAGE = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_ARM_NS = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_NS_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.io_pgtable_cfg*)* @arm_v7s_prot_to_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_prot_to_pte(i32 %0, i32 %1, %struct.io_pgtable_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_pgtable_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.io_pgtable_cfg* %2, %struct.io_pgtable_cfg** %6, align 8
  %9 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %10 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IO_PGTABLE_QUIRK_NO_PERMS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ARM_V7S_ATTR_NG, align 4
  %18 = load i32, i32* @ARM_V7S_ATTR_S, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IOMMU_MMIO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = call i32 @ARM_V7S_ATTR_TEX(i32 1)
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i32, i32* @ARM_V7S_PTE_AF, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IOMMU_PRIV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ARM_V7S_PTE_AP_UNPRIV, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IOMMU_WRITE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ARM_V7S_PTE_AP_RDONLY, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ARM_V7S_ATTR_SHIFT(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IOMMU_NOEXEC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ARM_V7S_ATTR_XN(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %62, %53
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IOMMU_MMIO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @ARM_V7S_ATTR_B, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %91

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @IOMMU_CACHE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @ARM_V7S_ATTR_B, align 4
  %86 = load i32, i32* @ARM_V7S_ATTR_C, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i32, i32* @ARM_V7S_PTE_TYPE_PAGE, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %99 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IO_PGTABLE_QUIRK_ARM_NS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @ARM_V7S_ATTR_NS_SECTION, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %97, %91
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @ARM_V7S_ATTR_TEX(i32) #1

declare dso_local i32 @ARM_V7S_ATTR_SHIFT(i32) #1

declare dso_local i32 @ARM_V7S_ATTR_XN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

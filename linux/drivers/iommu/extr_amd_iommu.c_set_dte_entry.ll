; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_set_dte_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_set_dte_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.amd_iommu = type { i32 }
%struct.protection_domain = type { i64, i32, i64, i64, i32, i32 }

@PAGE_MODE_NONE = common dso_local global i64 0, align 8
@DEV_ENTRY_MODE_MASK = common dso_local global i64 0, align 8
@DEV_ENTRY_MODE_SHIFT = common dso_local global i64 0, align 8
@DTE_FLAG_IR = common dso_local global i64 0, align 8
@DTE_FLAG_IW = common dso_local global i64 0, align 8
@DTE_FLAG_V = common dso_local global i64 0, align 8
@DTE_FLAG_TV = common dso_local global i64 0, align 8
@amd_iommu_dev_table = common dso_local global %struct.TYPE_2__* null, align 8
@DTE_FLAG_IOTLB = common dso_local global i64 0, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@FEATURE_EPHSUP = common dso_local global i32 0, align 4
@DEV_ENTRY_PPR = common dso_local global i64 0, align 8
@PD_IOMMUV2_MASK = common dso_local global i32 0, align 4
@DTE_FLAG_GV = common dso_local global i64 0, align 8
@DTE_GLX_MASK = common dso_local global i64 0, align 8
@DTE_GLX_SHIFT = common dso_local global i64 0, align 8
@DTE_GCR3_SHIFT_B = common dso_local global i64 0, align 8
@DTE_GCR3_SHIFT_C = common dso_local global i64 0, align 8
@DTE_GCR3_SHIFT_A = common dso_local global i64 0, align 8
@DEV_DOMID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.protection_domain*, i32, i32)* @set_dte_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dte_entry(i64 %0, %struct.protection_domain* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.protection_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.amd_iommu*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.amd_iommu*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.protection_domain* %1, %struct.protection_domain** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %18 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_MODE_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %24 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @iommu_virt_to_phys(i32 %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %22, %4
  %28 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %29 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEV_ENTRY_MODE_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @DEV_ENTRY_MODE_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = load i64, i64* %9, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* @DTE_FLAG_IR, align 8
  %38 = load i64, i64* @DTE_FLAG_IW, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @DTE_FLAG_V, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @DTE_FLAG_TV, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %27
  %56 = load i64, i64* @DTE_FLAG_IOTLB, align 8
  %57 = load i64, i64* %10, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %55, %27
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %63, i64 %64
  %66 = load %struct.amd_iommu*, %struct.amd_iommu** %65, align 8
  store %struct.amd_iommu* %66, %struct.amd_iommu** %12, align 8
  %67 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %68 = load i32, i32* @FEATURE_EPHSUP, align 4
  %69 = call i64 @iommu_feature(%struct.amd_iommu* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i64, i64* @DEV_ENTRY_PPR, align 8
  %73 = shl i64 1, %72
  %74 = load i64, i64* %9, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %71, %62
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %79 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %77
  %85 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %86 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @iommu_virt_to_phys(i32 %87)
  store i64 %88, i64* %13, align 8
  %89 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %90 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* @DTE_FLAG_GV, align 8
  %93 = load i64, i64* %9, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* @DTE_GLX_MASK, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @DTE_GLX_SHIFT, align 8
  %99 = shl i64 %97, %98
  %100 = load i64, i64* %9, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = call i64 @DTE_GCR3_VAL_B(i64 -1)
  %103 = load i64, i64* @DTE_GCR3_SHIFT_B, align 8
  %104 = shl i64 %102, %103
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %10, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = call i64 @DTE_GCR3_VAL_C(i64 -1)
  %110 = load i64, i64* @DTE_GCR3_SHIFT_C, align 8
  %111 = shl i64 %109, %110
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %10, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @DTE_GCR3_VAL_A(i64 %116)
  %118 = load i64, i64* @DTE_GCR3_SHIFT_A, align 8
  %119 = shl i64 %117, %118
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %9, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i64 @DTE_GCR3_VAL_B(i64 %123)
  %125 = load i64, i64* @DTE_GCR3_SHIFT_B, align 8
  %126 = shl i64 %124, %125
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %10, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i64 @DTE_GCR3_VAL_C(i64 %130)
  %132 = load i64, i64* @DTE_GCR3_SHIFT_C, align 8
  %133 = shl i64 %131, %132
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %10, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %84, %77
  %138 = load i64, i64* @DEV_DOMID_MASK, align 8
  %139 = xor i64 %138, -1
  %140 = load i64, i64* %10, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %10, align 8
  %142 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %143 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %10, align 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @DEV_DOMID_MASK, align 8
  %155 = and i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %159 = load i64, i64* %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 1
  store i64 %157, i64* %163, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  store i64 %164, i64* %170, align 8
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %137
  %174 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %175 = load i64, i64* %5, align 8
  %176 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %174, i64 %175
  %177 = load %struct.amd_iommu*, %struct.amd_iommu** %176, align 8
  store %struct.amd_iommu* %177, %struct.amd_iommu** %16, align 8
  %178 = load %struct.amd_iommu*, %struct.amd_iommu** %16, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @amd_iommu_flush_tlb_domid(%struct.amd_iommu* %178, i32 %179)
  br label %181

181:                                              ; preds = %173, %137
  ret void
}

declare dso_local i64 @iommu_virt_to_phys(i32) #1

declare dso_local i64 @iommu_feature(%struct.amd_iommu*, i32) #1

declare dso_local i64 @DTE_GCR3_VAL_B(i64) #1

declare dso_local i64 @DTE_GCR3_VAL_C(i64) #1

declare dso_local i64 @DTE_GCR3_VAL_A(i64) #1

declare dso_local i32 @amd_iommu_flush_tlb_domid(%struct.amd_iommu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

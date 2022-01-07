; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_prot_to_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_prot_to_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ARM_64_LPAE_S1 = common dso_local global i64 0, align 8
@ARM_32_LPAE_S1 = common dso_local global i64 0, align 8
@ARM_LPAE_PTE_nG = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_AP_RDONLY = common dso_local global i32 0, align 4
@IOMMU_PRIV = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_AP_UNPRIV = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_HAP_FAULT = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_HAP_READ = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_HAP_WRITE = common dso_local global i32 0, align 4
@ARM_64_LPAE_S2 = common dso_local global i64 0, align 8
@ARM_32_LPAE_S2 = common dso_local global i64 0, align 8
@IOMMU_MMIO = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_MEMATTR_DEV = common dso_local global i32 0, align 4
@IOMMU_CACHE = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_MEMATTR_OIWB = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_MEMATTR_NC = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_DEV = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_ATTRINDX_SHIFT = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_CACHE = common dso_local global i32 0, align 4
@IOMMU_QCOM_SYS_CACHE = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE = common dso_local global i32 0, align 4
@IOMMU_NOEXEC = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_XN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_lpae_io_pgtable*, i32)* @arm_lpae_prot_to_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_lpae_prot_to_pte(%struct.arm_lpae_io_pgtable* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %3, align 8
  %7 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ARM_64_LPAE_S1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %3, align 8
  %14 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARM_32_LPAE_S1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @ARM_LPAE_PTE_nG, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IOMMU_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IOMMU_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @ARM_LPAE_PTE_AP_RDONLY, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %25, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IOMMU_PRIV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ARM_LPAE_PTE_AP_UNPRIV, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %64

44:                                               ; preds = %12
  %45 = load i32, i32* @ARM_LPAE_PTE_HAP_FAULT, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IOMMU_READ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @ARM_LPAE_PTE_HAP_READ, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IOMMU_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @ARM_LPAE_PTE_HAP_WRITE, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %3, align 8
  %66 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ARM_64_LPAE_S2, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %3, align 8
  %73 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ARM_32_LPAE_S2, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %71, %64
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IOMMU_MMIO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @ARM_LPAE_PTE_MEMATTR_DEV, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @IOMMU_CACHE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @ARM_LPAE_PTE_MEMATTR_OIWB, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %100

96:                                               ; preds = %87
  %97 = load i32, i32* @ARM_LPAE_PTE_MEMATTR_NC, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %83
  br label %138

102:                                              ; preds = %71
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @IOMMU_MMIO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_DEV, align 4
  %109 = load i32, i32* @ARM_LPAE_PTE_ATTRINDX_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %137

113:                                              ; preds = %102
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @IOMMU_CACHE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_CACHE, align 4
  %120 = load i32, i32* @ARM_LPAE_PTE_ATTRINDX_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %136

124:                                              ; preds = %113
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @IOMMU_QCOM_SYS_CACHE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE, align 4
  %131 = load i32, i32* @ARM_LPAE_PTE_ATTRINDX_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %124
  br label %136

136:                                              ; preds = %135, %118
  br label %137

137:                                              ; preds = %136, %107
  br label %138

138:                                              ; preds = %137, %101
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @IOMMU_NOEXEC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @ARM_LPAE_PTE_XN, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

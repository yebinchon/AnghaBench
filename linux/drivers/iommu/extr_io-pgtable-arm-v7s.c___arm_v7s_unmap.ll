; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { i32, %struct.io_pgtable }
%struct.io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }

@ARM_V7S_CONT_PAGES = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_NON_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arm_v7s_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32*)* @__arm_v7s_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable* %0, %struct.iommu_iotlb_gather* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.io_pgtable*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.arm_v7s_io_pgtable* %0, %struct.arm_v7s_io_pgtable** %8, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %28 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %27, i32 0, i32 1
  store %struct.io_pgtable* %28, %struct.io_pgtable** %16, align 8
  store i32 0, i32* %18, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @ARM_V7S_LVL_SHIFT(i32 %30)
  %32 = lshr i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 2
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %202

40:                                               ; preds = %6
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ARM_V7S_LVL_IDX(i64 %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %13, align 8
  br label %48

48:                                               ; preds = %70, %40
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @READ_ONCE(i32 %53)
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %26, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %26, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ARM_V7S_PTE_IS_VALID(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %202

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %48, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %19, align 4
  %77 = icmp sle i32 %76, 1
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = getelementptr inbounds i32, i32* %26, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @arm_v7s_pte_is_cont(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %86 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %85, i32 0, i32 0
  %87 = load i64, i64* %21, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @arm_v7s_split_cont(%struct.arm_v7s_io_pgtable* %89, i64 %90, i32 %91, i32 %92, i32* %93)
  %95 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %94, i32* %95, align 16
  %96 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %97 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %96, i32 0, i32 0
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  br label %100

100:                                              ; preds = %84, %78, %75
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %169

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = call i64 @ARM_V7S_BLOCK_SIZE(i32 %104)
  store i64 %105, i64* %22, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load %struct.io_pgtable*, %struct.io_pgtable** %16, align 8
  %109 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %108, i32 0, i32 0
  %110 = call i32 @__arm_v7s_set_pte(i32* %106, i32 0, i32 %107, %struct.TYPE_2__* %109)
  store i32 0, i32* %18, align 4
  br label %111

111:                                              ; preds = %164, %103
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %167

115:                                              ; preds = %111
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %26, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i64 @ARM_V7S_PTE_IS_TABLE(i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %115
  %124 = load %struct.io_pgtable*, %struct.io_pgtable** %16, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i64 @ARM_V7S_BLOCK_SIZE(i32 %128)
  %130 = call i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable* %124, i64 %125, i64 %126, i64 %129)
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %26, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %137 = call i32* @iopte_deref(i32 %134, i32 %135, %struct.arm_v7s_io_pgtable* %136)
  store i32* %137, i32** %13, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %142 = call i32 @__arm_v7s_free_table(i32* %138, i32 %140, %struct.arm_v7s_io_pgtable* %141)
  br label %160

143:                                              ; preds = %115
  %144 = load %struct.io_pgtable*, %struct.io_pgtable** %16, align 8
  %145 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IO_PGTABLE_QUIRK_NON_STRICT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 (...) @smp_wmb()
  br label %159

153:                                              ; preds = %143
  %154 = load %struct.io_pgtable*, %struct.io_pgtable** %16, align 8
  %155 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @io_pgtable_tlb_add_page(%struct.io_pgtable* %154, %struct.iommu_iotlb_gather* %155, i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %153, %151
  br label %160

160:                                              ; preds = %159, %123
  %161 = load i64, i64* %22, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %18, align 4
  br label %111

167:                                              ; preds = %111
  %168 = load i64, i64* %11, align 8
  store i64 %168, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %202

169:                                              ; preds = %100
  %170 = load i32, i32* %12, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  %173 = getelementptr inbounds i32, i32* %26, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = load i32, i32* %12, align 4
  %176 = call i64 @ARM_V7S_PTE_IS_TABLE(i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %172
  %179 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %180 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds i32, i32* %26, i64 0
  %184 = load i32, i32* %183, align 16
  %185 = load i32*, i32** %13, align 8
  %186 = call i64 @arm_v7s_split_blk_unmap(%struct.arm_v7s_io_pgtable* %179, %struct.iommu_iotlb_gather* %180, i64 %181, i64 %182, i32 %184, i32* %185)
  store i64 %186, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %202

187:                                              ; preds = %172, %169
  br label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds i32, i32* %26, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %193 = call i32* @iopte_deref(i32 %190, i32 %191, %struct.arm_v7s_io_pgtable* %192)
  store i32* %193, i32** %13, align 8
  %194 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %195 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  %200 = load i32*, i32** %13, align 8
  %201 = call i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable* %194, %struct.iommu_iotlb_gather* %195, i64 %196, i64 %197, i32 %199, i32* %200)
  store i64 %201, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %202

202:                                              ; preds = %188, %178, %167, %68, %39
  %203 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i64, i64* %7, align 8
  ret i64 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARM_V7S_LVL_SHIFT(i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @ARM_V7S_LVL_IDX(i64, i32) #2

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i32 @ARM_V7S_PTE_IS_VALID(i32) #2

declare dso_local i64 @arm_v7s_pte_is_cont(i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @arm_v7s_split_cont(%struct.arm_v7s_io_pgtable*, i64, i32, i32, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @ARM_V7S_BLOCK_SIZE(i32) #2

declare dso_local i32 @__arm_v7s_set_pte(i32*, i32, i32, %struct.TYPE_2__*) #2

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i32, i32) #2

declare dso_local i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable*, i64, i64, i64) #2

declare dso_local i32* @iopte_deref(i32, i32, %struct.arm_v7s_io_pgtable*) #2

declare dso_local i32 @__arm_v7s_free_table(i32*, i32, %struct.arm_v7s_io_pgtable*) #2

declare dso_local i32 @smp_wmb(...) #2

declare dso_local i32 @io_pgtable_tlb_add_page(%struct.io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64) #2

declare dso_local i64 @arm_v7s_split_blk_unmap(%struct.arm_v7s_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

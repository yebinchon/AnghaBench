; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pfn_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_pfn_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.nvkm_vma = type { i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NVKM_VMA_PAGE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_vmm_pfn_unmap(%struct.nvkm_vmm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_vma*, align 8
  %9 = alloca %struct.nvkm_vma*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm* %12, i64 %13)
  store %struct.nvkm_vma* %14, %struct.nvkm_vma** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %20 = icmp ne %struct.nvkm_vma* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %96

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %93, %24
  %26 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %32 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  br label %82

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %45 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = sub nsw i64 %42, %47
  %49 = call i64 @min(i64 %39, i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %51 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %52 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm* %50, i32* %59, i64 %60, i64 %61, i32 0, i32 1)
  %63 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %64 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call %struct.nvkm_vma* @nvkm_vmm_pfn_split_merge(%struct.nvkm_vmm* %63, %struct.nvkm_vma* %64, i64 %65, i64 %66, i32 0, i32 0)
  store %struct.nvkm_vma* %67, %struct.nvkm_vma** %9, align 8
  %68 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %69 = icmp ne %struct.nvkm_vma* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %36
  %75 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  store %struct.nvkm_vma* %75, %struct.nvkm_vma** %8, align 8
  %76 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %77 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %78 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %80 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %74, %36
  br label %82

82:                                               ; preds = %81, %35
  %83 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %84 = load %struct.nvkm_vma*, %struct.nvkm_vma** %9, align 8
  %85 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %83, %struct.nvkm_vma* %84)
  store %struct.nvkm_vma* %85, %struct.nvkm_vma** %8, align 8
  %86 = icmp ne %struct.nvkm_vma* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %89 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp slt i64 %90, %91
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i1 [ false, %82 ], [ %92, %87 ]
  br i1 %94, label %25, label %95

95:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm*, i32*, i64, i64, i32, i32) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_pfn_split_merge(%struct.nvkm_vmm*, %struct.nvkm_vma*, i64, i64, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nvkm_vma* @node(%struct.nvkm_vma*, %struct.nvkm_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

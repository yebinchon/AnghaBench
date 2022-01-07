; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vmm.c_nouveau_vma_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vmm.c_nouveau_vma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_vmm = type { i32 }
%struct.nouveau_vma = type { i32, i64, i32, i32*, i32*, %struct.nouveau_vmm* }
%struct.nouveau_mem = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nvif_vma = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@LAZY = common dso_local global i32 0, align 4
@PTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_vma_new(%struct.nouveau_bo* %0, %struct.nouveau_vmm* %1, %struct.nouveau_vma** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nouveau_vmm*, align 8
  %7 = alloca %struct.nouveau_vma**, align 8
  %8 = alloca %struct.nouveau_mem*, align 8
  %9 = alloca %struct.nouveau_vma*, align 8
  %10 = alloca %struct.nvif_vma, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %5, align 8
  store %struct.nouveau_vmm* %1, %struct.nouveau_vmm** %6, align 8
  store %struct.nouveau_vma** %2, %struct.nouveau_vma*** %7, align 8
  %12 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call %struct.nouveau_mem* @nouveau_mem(%struct.TYPE_6__* %14)
  store %struct.nouveau_mem* %15, %struct.nouveau_mem** %8, align 8
  %16 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %17 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %6, align 8
  %18 = call %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo* %16, %struct.nouveau_vmm* %17)
  %19 = load %struct.nouveau_vma**, %struct.nouveau_vma*** %7, align 8
  store %struct.nouveau_vma* %18, %struct.nouveau_vma** %19, align 8
  store %struct.nouveau_vma* %18, %struct.nouveau_vma** %9, align 8
  %20 = icmp ne %struct.nouveau_vma* %18, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %23 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %117

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.nouveau_vma* @kmalloc(i32 48, i32 %27)
  %29 = load %struct.nouveau_vma**, %struct.nouveau_vma*** %7, align 8
  store %struct.nouveau_vma* %28, %struct.nouveau_vma** %29, align 8
  store %struct.nouveau_vma* %28, %struct.nouveau_vma** %9, align 8
  %30 = icmp ne %struct.nouveau_vma* %28, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %117

34:                                               ; preds = %26
  %35 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %6, align 8
  %36 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %37 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %36, i32 0, i32 5
  store %struct.nouveau_vmm* %35, %struct.nouveau_vmm** %37, align 8
  %38 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %39 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %41 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %40, i32 0, i32 1
  store i64 -1, i64* %41, align 8
  %42 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %43 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %45 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %47 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %46, i32 0, i32 2
  %48 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %34
  %59 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %60 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %64 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %58
  %68 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %6, align 8
  %69 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %68, i32 0, i32 0
  %70 = load i32, i32* @LAZY, align 4
  %71 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %72 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %76 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @nvif_vmm_get(i32* %69, i32 %70, i32 0, i64 %74, i32 0, i32 %78, %struct.nvif_vma* %10)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %109

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.nvif_vma, %struct.nvif_vma* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %87 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %89 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %90 = call i32 @nouveau_vma_map(%struct.nouveau_vma* %88, %struct.nouveau_mem* %89)
  store i32 %90, i32* %11, align 4
  br label %108

91:                                               ; preds = %58, %34
  %92 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %6, align 8
  %93 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %92, i32 0, i32 0
  %94 = load i32, i32* @PTES, align 4
  %95 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %96 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %100 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @nvif_vmm_get(i32* %93, i32 %94, i32 0, i64 %98, i32 0, i32 %102, %struct.nvif_vma* %10)
  store i32 %103, i32* %11, align 4
  %104 = getelementptr inbounds %struct.nvif_vma, %struct.nvif_vma* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %107 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %91, %83
  br label %109

109:                                              ; preds = %108, %82
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.nouveau_vma**, %struct.nouveau_vma*** %7, align 8
  %114 = call i32 @nouveau_vma_del(%struct.nouveau_vma** %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %31, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.TYPE_6__*) #1

declare dso_local %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo*, %struct.nouveau_vmm*) #1

declare dso_local %struct.nouveau_vma* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nvif_vmm_get(i32*, i32, i32, i64, i32, i32, %struct.nvif_vma*) #1

declare dso_local i32 @nouveau_vma_map(%struct.nouveau_vma*, %struct.nouveau_mem*) #1

declare dso_local i32 @nouveau_vma_del(%struct.nouveau_vma**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

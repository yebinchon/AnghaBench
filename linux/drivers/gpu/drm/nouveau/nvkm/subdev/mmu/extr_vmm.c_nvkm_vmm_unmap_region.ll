; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unmap_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_vma = type { i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_vmm_unmap_region(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1) #0 {
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_vma*, align 8
  %5 = alloca %struct.nvkm_vma*, align 8
  %6 = alloca %struct.nvkm_vma*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %3, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %4, align 8
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %5, align 8
  %7 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %16, i32 0, i32 4
  %18 = call i32 @nvkm_memory_tags_put(i32 %9, i32 %15, i32* %17)
  %19 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %19, i32 0, i32 3
  %21 = call i32 @nvkm_memory_unref(i32* %20)
  %22 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %25 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %30 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %31 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %29, %struct.nvkm_vma* %30)
  store %struct.nvkm_vma* %31, %struct.nvkm_vma** %5, align 8
  %32 = icmp ne %struct.nvkm_vma* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %5, align 8
  br label %39

39:                                               ; preds = %38, %33, %28, %2
  %40 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %41 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %42 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %40, %struct.nvkm_vma* %41)
  store %struct.nvkm_vma* %42, %struct.nvkm_vma** %6, align 8
  %43 = icmp ne %struct.nvkm_vma* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %46 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %51 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %6, align 8
  br label %55

55:                                               ; preds = %54, %49, %39
  %56 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %57 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %58 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %59 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %60 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %61 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nvkm_vmm_node_merge(%struct.nvkm_vmm* %56, %struct.nvkm_vma* %57, %struct.nvkm_vma* %58, %struct.nvkm_vma* %59, i32 %62)
  ret void
}

declare dso_local i32 @nvkm_memory_tags_put(i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_unref(i32*) #1

declare dso_local %struct.nvkm_vma* @node(%struct.nvkm_vma*, %struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_node_merge(%struct.nvkm_vmm*, %struct.nvkm_vma*, %struct.nvkm_vma*, %struct.nvkm_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

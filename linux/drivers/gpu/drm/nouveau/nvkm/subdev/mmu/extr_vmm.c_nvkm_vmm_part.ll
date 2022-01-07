; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)* }
%struct.nvkm_memory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_vmm_part(%struct.nvkm_vmm* %0, %struct.nvkm_memory* %1) #0 {
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %3, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %4, align 8
  %5 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %6 = icmp ne %struct.nvkm_memory* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %9 = icmp ne %struct.nvkm_vmm* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)** %14, align 8
  %16 = icmp ne i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_memory*)** %24, align 8
  %26 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %27 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %28 = call i32 %25(%struct.nvkm_vmm* %26, %struct.nvkm_memory* %27)
  %29 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %17, %10, %7, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory_func = type { i32 }
%struct.nvkm_memory = type { i32, %struct.nvkm_memory_func* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_memory_ctor(%struct.nvkm_memory_func* %0, %struct.nvkm_memory* %1) #0 {
  %3 = alloca %struct.nvkm_memory_func*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_memory_func* %0, %struct.nvkm_memory_func** %3, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %4, align 8
  %5 = load %struct.nvkm_memory_func*, %struct.nvkm_memory_func** %3, align 8
  %6 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %6, i32 0, i32 1
  store %struct.nvkm_memory_func* %5, %struct.nvkm_memory_func** %7, align 8
  %8 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %8, i32 0, i32 0
  %10 = call i32 @kref_init(i32* %9)
  ret void
}

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

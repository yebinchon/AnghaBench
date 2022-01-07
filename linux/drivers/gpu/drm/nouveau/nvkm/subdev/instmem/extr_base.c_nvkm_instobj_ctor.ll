; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_base.c_nvkm_instobj_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_base.c_nvkm_instobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory_func = type { i32 }
%struct.nvkm_instmem = type { i32, i32 }
%struct.nvkm_instobj = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_instobj_ctor(%struct.nvkm_memory_func* %0, %struct.nvkm_instmem* %1, %struct.nvkm_instobj* %2) #0 {
  %4 = alloca %struct.nvkm_memory_func*, align 8
  %5 = alloca %struct.nvkm_instmem*, align 8
  %6 = alloca %struct.nvkm_instobj*, align 8
  store %struct.nvkm_memory_func* %0, %struct.nvkm_memory_func** %4, align 8
  store %struct.nvkm_instmem* %1, %struct.nvkm_instmem** %5, align 8
  store %struct.nvkm_instobj* %2, %struct.nvkm_instobj** %6, align 8
  %7 = load %struct.nvkm_memory_func*, %struct.nvkm_memory_func** %4, align 8
  %8 = load %struct.nvkm_instobj*, %struct.nvkm_instobj** %6, align 8
  %9 = getelementptr inbounds %struct.nvkm_instobj, %struct.nvkm_instobj* %8, i32 0, i32 2
  %10 = call i32 @nvkm_memory_ctor(%struct.nvkm_memory_func* %7, i32* %9)
  %11 = load %struct.nvkm_instobj*, %struct.nvkm_instobj** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_instobj, %struct.nvkm_instobj* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.nvkm_instobj*, %struct.nvkm_instobj** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_instobj, %struct.nvkm_instobj* %16, i32 0, i32 0
  %18 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local i32 @nvkm_memory_ctor(%struct.nvkm_memory_func*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

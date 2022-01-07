; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nvkm_gpuobj = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_gpuobj_wrap(%struct.nvkm_memory* %0, %struct.nvkm_gpuobj** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca %struct.nvkm_gpuobj**, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %4, align 8
  store %struct.nvkm_gpuobj** %1, %struct.nvkm_gpuobj*** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nvkm_gpuobj* @kzalloc(i32 8, i32 %6)
  %8 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %5, align 8
  store %struct.nvkm_gpuobj* %7, %struct.nvkm_gpuobj** %8, align 8
  %9 = icmp ne %struct.nvkm_gpuobj* %7, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %15 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %14)
  %16 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %5, align 8
  %17 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %20 = call i32 @nvkm_memory_size(%struct.nvkm_memory* %19)
  %21 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %5, align 8
  %22 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.nvkm_gpuobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_memory_addr(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_memory_size(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

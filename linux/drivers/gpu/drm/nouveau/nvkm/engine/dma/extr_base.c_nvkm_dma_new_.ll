; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_dma = type { i32, %struct.nvkm_dma_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_dma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_dma_new_(%struct.nvkm_dma_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_dma** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_dma_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_dma**, align 8
  %10 = alloca %struct.nvkm_dma*, align 8
  store %struct.nvkm_dma_func* %0, %struct.nvkm_dma_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_dma** %3, %struct.nvkm_dma*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_dma* @kzalloc(i32 16, i32 %11)
  %13 = load %struct.nvkm_dma**, %struct.nvkm_dma*** %9, align 8
  store %struct.nvkm_dma* %12, %struct.nvkm_dma** %13, align 8
  store %struct.nvkm_dma* %12, %struct.nvkm_dma** %10, align 8
  %14 = icmp ne %struct.nvkm_dma* %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.nvkm_dma_func*, %struct.nvkm_dma_func** %6, align 8
  %20 = load %struct.nvkm_dma*, %struct.nvkm_dma** %10, align 8
  %21 = getelementptr inbounds %struct.nvkm_dma, %struct.nvkm_dma* %20, i32 0, i32 1
  store %struct.nvkm_dma_func* %19, %struct.nvkm_dma_func** %21, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nvkm_dma*, %struct.nvkm_dma** %10, align 8
  %25 = getelementptr inbounds %struct.nvkm_dma, %struct.nvkm_dma* %24, i32 0, i32 0
  %26 = call i32 @nvkm_engine_ctor(i32* @nvkm_dma, %struct.nvkm_device* %22, i32 %23, i32 1, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.nvkm_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nv50_sgdma_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nv50_sgdma_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_sgdma_be = type { %struct.nouveau_mem*, i32 }
%struct.nouveau_mem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* @nv50_sgdma_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_sgdma_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.nouveau_sgdma_be*, align 8
  %7 = alloca %struct.nouveau_mem*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %10 = bitcast %struct.ttm_tt* %9 to %struct.nouveau_sgdma_be*
  store %struct.nouveau_sgdma_be* %10, %struct.nouveau_sgdma_be** %6, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %12 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %11)
  store %struct.nouveau_mem* %12, %struct.nouveau_mem** %7, align 8
  %13 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %14 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %14, i32 0, i32 1
  %16 = call i32 @nouveau_mem_host(%struct.ttm_mem_reg* %13, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %23 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %23, i32 0, i32 0
  store %struct.nouveau_mem* %22, %struct.nouveau_mem** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_mem_host(%struct.ttm_mem_reg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

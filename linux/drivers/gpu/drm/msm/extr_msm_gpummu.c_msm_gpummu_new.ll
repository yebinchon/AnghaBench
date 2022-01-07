; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpummu.c_msm_gpummu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpummu.c_msm_gpummu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mmu = type { i32 }
%struct.device = type { i32 }
%struct.msm_gpu = type { i32 }
%struct.msm_gpummu = type { %struct.msm_mmu, %struct.msm_gpu*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TABLE_SIZE = common dso_local global i64 0, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_ATTR_FORCE_CONTIGUOUS = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_mmu* @msm_gpummu_new(%struct.device* %0, %struct.msm_gpu* %1) #0 {
  %3 = alloca %struct.msm_mmu*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.msm_gpummu*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.msm_gpu* %1, %struct.msm_gpu** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.msm_gpummu* @kzalloc(i32 24, i32 %7)
  store %struct.msm_gpummu* %8, %struct.msm_gpummu** %6, align 8
  %9 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %10 = icmp ne %struct.msm_gpummu* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.msm_mmu* @ERR_PTR(i32 %13)
  store %struct.msm_mmu* %14, %struct.msm_mmu** %3, align 8
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i64, i64* @TABLE_SIZE, align 8
  %18 = add nsw i64 %17, 32
  %19 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %20 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %19, i32 0, i32 3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DMA_ATTR_FORCE_CONTIGUOUS, align 4
  %25 = call i32 @dma_alloc_attrs(%struct.device* %16, i64 %18, i32* %20, i32 %23, i32 %24)
  %26 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %27 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %29 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %15
  %33 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %34 = call i32 @kfree(%struct.msm_gpummu* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.msm_mmu* @ERR_PTR(i32 %36)
  store %struct.msm_mmu* %37, %struct.msm_mmu** %3, align 8
  br label %48

38:                                               ; preds = %15
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %40 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %41 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %40, i32 0, i32 1
  store %struct.msm_gpu* %39, %struct.msm_gpu** %41, align 8
  %42 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %43 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %42, i32 0, i32 0
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @msm_mmu_init(%struct.msm_mmu* %43, %struct.device* %44, i32* @funcs)
  %46 = load %struct.msm_gpummu*, %struct.msm_gpummu** %6, align 8
  %47 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %46, i32 0, i32 0
  store %struct.msm_mmu* %47, %struct.msm_mmu** %3, align 8
  br label %48

48:                                               ; preds = %38, %32, %11
  %49 = load %struct.msm_mmu*, %struct.msm_mmu** %3, align 8
  ret %struct.msm_mmu* %49
}

declare dso_local %struct.msm_gpummu* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_mmu* @ERR_PTR(i32) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i64, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.msm_gpummu*) #1

declare dso_local i32 @msm_mmu_init(%struct.msm_mmu*, %struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

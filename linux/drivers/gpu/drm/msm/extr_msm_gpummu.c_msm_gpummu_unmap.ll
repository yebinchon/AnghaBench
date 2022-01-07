; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpummu.c_msm_gpummu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpummu.c_msm_gpummu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mmu = type { i32 }
%struct.msm_gpummu = type { i32, i64* }

@GPUMMU_VA_START = common dso_local global i32 0, align 4
@GPUMMU_PAGE_SIZE = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_INVALIDATE = common dso_local global i32 0, align 4
@A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL = common dso_local global i32 0, align 4
@A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mmu*, i32, i32)* @msm_gpummu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpummu_unmap(%struct.msm_mmu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_gpummu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_mmu* %0, %struct.msm_mmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.msm_mmu*, %struct.msm_mmu** %4, align 8
  %11 = call %struct.msm_gpummu* @to_msm_gpummu(%struct.msm_mmu* %10)
  store %struct.msm_gpummu* %11, %struct.msm_gpummu** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GPUMMU_VA_START, align 4
  %14 = sub i32 %12, %13
  %15 = load i32, i32* @GPUMMU_PAGE_SIZE, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GPUMMU_PAGE_SIZE, align 4
  %21 = udiv i32 %19, %20
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.msm_gpummu*, %struct.msm_gpummu** %7, align 8
  %25 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.msm_gpummu*, %struct.msm_gpummu** %7, align 8
  %37 = getelementptr inbounds %struct.msm_gpummu, %struct.msm_gpummu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @REG_A2XX_MH_MMU_INVALIDATE, align 4
  %40 = load i32, i32* @A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL, align 4
  %41 = load i32, i32* @A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @gpu_write(i32 %38, i32 %39, i32 %42)
  ret i32 0
}

declare dso_local %struct.msm_gpummu* @to_msm_gpummu(%struct.msm_mmu*) #1

declare dso_local i32 @gpu_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

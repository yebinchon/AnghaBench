; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_driver = type { i32, i32*, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@PSB_CR_BIF_CTRL = common dso_local global i32 0, align 4
@_PSB_CB_CTRL_INVALDC = common dso_local global i32 0, align 4
@_PSB_CB_CTRL_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_mmu_flush(%struct.psb_mmu_driver* %0) #0 {
  %2 = alloca %struct.psb_mmu_driver*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i32, align 4
  store %struct.psb_mmu_driver* %0, %struct.psb_mmu_driver** %2, align 8
  %6 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %7 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %6, i32 0, i32 3
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %4, align 8
  %12 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %13 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %12, i32 0, i32 0
  %14 = call i32 @down_write(i32* %13)
  %15 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %16 = call i32 @PSB_RSGX32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %18 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %17, i32 0, i32 2
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @_PSB_CB_CTRL_INVALDC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %26 = call i32 @PSB_WSGX32(i32 %24, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @_PSB_CB_CTRL_FLUSH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %32 = call i32 @PSB_WSGX32(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = call i32 (...) @wmb()
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @_PSB_CB_CTRL_FLUSH, align 4
  %37 = load i32, i32* @_PSB_CB_CTRL_INVALDC, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %42 = call i32 @PSB_WSGX32(i32 %40, i32 %41)
  %43 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %44 = call i32 @PSB_RSGX32(i32 %43)
  %45 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %46 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %45, i32 0, i32 2
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %49 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %54 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @atomic_set(i32* %55, i32 1)
  br label %57

57:                                               ; preds = %52, %33
  %58 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %59 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

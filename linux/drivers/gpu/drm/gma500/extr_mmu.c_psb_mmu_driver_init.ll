; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_driver = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PSB_CR_BIF_CTRL = common dso_local global i32 0, align 4
@_PSB_CB_CTRL_CLEAR_FAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psb_mmu_driver* @psb_mmu_driver_init(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.psb_mmu_driver*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.psb_mmu_driver*, align 8
  %11 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %13, align 8
  store %struct.drm_psb_private* %14, %struct.drm_psb_private** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.psb_mmu_driver* @kmalloc(i32 56, i32 %15)
  store %struct.psb_mmu_driver* %16, %struct.psb_mmu_driver** %10, align 8
  %17 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %18 = icmp ne %struct.psb_mmu_driver* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.psb_mmu_driver* null, %struct.psb_mmu_driver** %5, align 8
  br label %79

20:                                               ; preds = %4
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %23 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %22, i32 0, i32 9
  store %struct.drm_device* %21, %struct.drm_device** %23, align 8
  %24 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @psb_mmu_alloc_pd(%struct.psb_mmu_driver* %24, i32 %25, i32 %26)
  %28 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %29 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %31 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %76

35:                                               ; preds = %20
  %36 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %37 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %36, i32 0, i32 7
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %40 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %39, i32 0, i32 4
  %41 = call i32 @init_rwsem(i32* %40)
  %42 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %43 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %42, i32 0, i32 4
  %44 = call i32 @down_write(i32* %43)
  %45 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %46 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %45, i32 0, i32 6
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %50 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %52 = call i32 @PSB_RSGX32(i32 %51)
  %53 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %54 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %56 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @_PSB_CB_CTRL_CLEAR_FAULT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %61 = call i32 @PSB_WSGX32(i32 %59, i32 %60)
  %62 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %63 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @_PSB_CB_CTRL_CLEAR_FAULT, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %69 = call i32 @PSB_WSGX32(i32 %67, i32 %68)
  %70 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %71 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %73 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %72, i32 0, i32 4
  %74 = call i32 @up_write(i32* %73)
  %75 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  store %struct.psb_mmu_driver* %75, %struct.psb_mmu_driver** %5, align 8
  br label %79

76:                                               ; preds = %34
  %77 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %10, align 8
  %78 = call i32 @kfree(%struct.psb_mmu_driver* %77)
  store %struct.psb_mmu_driver* null, %struct.psb_mmu_driver** %5, align 8
  br label %79

79:                                               ; preds = %76, %35, %19
  %80 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %5, align 8
  ret %struct.psb_mmu_driver* %80
}

declare dso_local %struct.psb_mmu_driver* @kmalloc(i32, i32) #1

declare dso_local i32 @psb_mmu_alloc_pd(%struct.psb_mmu_driver*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.psb_mmu_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

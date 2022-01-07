; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @radeon_pm_fini(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @si_cp_fini(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @cayman_dma_fini(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @si_fini_pg(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @si_fini_cg(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call i32 @si_irq_fini(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @sumo_rlc_fini(%struct.radeon_device* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @radeon_wb_fini(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i32 @uvd_v1_0_fini(%struct.radeon_device* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i32 @radeon_uvd_fini(%struct.radeon_device* %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = call i32 @radeon_vce_fini(%struct.radeon_device* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = call i32 @si_pcie_gart_fini(%struct.radeon_device* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @r600_vram_scratch_fini(%struct.radeon_device* %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = call i32 @radeon_gem_fini(%struct.radeon_device* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = call i32 @radeon_fence_driver_fini(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = call i32 @radeon_bo_fini(%struct.radeon_device* %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = call i32 @radeon_atombios_fini(%struct.radeon_device* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  ret void
}

declare dso_local i32 @radeon_pm_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_fini_pg(%struct.radeon_device*) #1

declare dso_local i32 @si_fini_cg(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @uvd_v1_0_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_uvd_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vce_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gem_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_fini(%struct.radeon_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

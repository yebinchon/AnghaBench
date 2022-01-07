; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_suspend(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @radeon_pm_suspend(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @radeon_audio_fini(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @cik_cp_enable(%struct.radeon_device* %9, i32 0)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @cik_sdma_enable(%struct.radeon_device* %11, i32 0)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @uvd_v1_0_fini(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @radeon_uvd_suspend(%struct.radeon_device* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i32 @radeon_vce_suspend(%struct.radeon_device* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = call i32 @cik_fini_pg(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = call i32 @cik_fini_cg(%struct.radeon_device* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @cik_irq_suspend(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i32 @radeon_wb_disable(%struct.radeon_device* %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = call i32 @cik_pcie_gart_disable(%struct.radeon_device* %39)
  ret i32 0
}

declare dso_local i32 @radeon_pm_suspend(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @cik_cp_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_sdma_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @uvd_v1_0_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_uvd_suspend(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vce_suspend(%struct.radeon_device*) #1

declare dso_local i32 @cik_fini_pg(%struct.radeon_device*) #1

declare dso_local i32 @cik_fini_cg(%struct.radeon_device*) #1

declare dso_local i32 @cik_irq_suspend(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_disable(%struct.radeon_device*) #1

declare dso_local i32 @cik_pcie_gart_disable(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

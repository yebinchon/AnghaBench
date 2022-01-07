; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_ttm.c_mgag200_mm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_ttm.c_mgag200_mm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgag200_mm_fini(%struct.mga_device* %0) #0 {
  %2 = alloca %struct.mga_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.mga_device* %0, %struct.mga_device** %2, align 8
  %4 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %5 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %4, i32 0, i32 1
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call i32 @drm_vram_helper_release_mm(%struct.drm_device* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_resource_start(i32 %11, i32 0)
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_resource_len(i32 %15, i32 0)
  %17 = call i32 @arch_io_free_memtype_wc(i32 %12, i32 %16)
  %18 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %19 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @arch_phys_wc_del(i64 %20)
  %22 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %23 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @drm_vram_helper_release_mm(%struct.drm_device*) #1

declare dso_local i32 @arch_io_free_memtype_wc(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @arch_phys_wc_del(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

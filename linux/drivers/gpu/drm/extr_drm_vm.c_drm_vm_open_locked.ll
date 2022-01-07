; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_open_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_open_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.drm_vma_entry = type { i32, i32, %struct.vm_area_struct* }

@.str = private unnamed_addr constant [17 x i8] c"0x%08lx,0x%08lx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.vm_area_struct*)* @drm_vm_open_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_vm_open_locked(%struct.drm_device* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_vma_entry*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.drm_vma_entry* @kmalloc(i32 16, i32 %17)
  store %struct.drm_vma_entry* %18, %struct.drm_vma_entry** %5, align 8
  %19 = load %struct.drm_vma_entry*, %struct.drm_vma_entry** %5, align 8
  %20 = icmp ne %struct.drm_vma_entry* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = load %struct.drm_vma_entry*, %struct.drm_vma_entry** %5, align 8
  %24 = getelementptr inbounds %struct.drm_vma_entry, %struct.drm_vma_entry* %23, i32 0, i32 2
  store %struct.vm_area_struct* %22, %struct.vm_area_struct** %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_vma_entry*, %struct.drm_vma_entry** %5, align 8
  %29 = getelementptr inbounds %struct.drm_vma_entry, %struct.drm_vma_entry* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_vma_entry*, %struct.drm_vma_entry** %5, align 8
  %31 = getelementptr inbounds %struct.drm_vma_entry, %struct.drm_vma_entry* %30, i32 0, i32 0
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = call i32 @list_add(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

declare dso_local %struct.drm_vma_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_glue.c_vmw_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_glue.c_vmw_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vmw_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  store %struct.drm_file* %9, %struct.drm_file** %5, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vmw_private* @vmw_priv(i32 %14)
  store %struct.vmw_private* %15, %struct.vmw_private** %6, align 8
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 0
  %20 = call i32 @ttm_bo_mmap(%struct.file* %16, %struct.vm_area_struct* %17, i32* %19)
  ret i32 %20
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @ttm_bo_mmap(%struct.file*, %struct.vm_area_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

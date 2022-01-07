; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_mmap_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_mmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_buf* }
%struct.drm_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i32 }

@VM_DONTCOPY = common dso_local global i32 0, align 4
@I810_BUF_MAPPED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @i810_mmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_mmap_buffers(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.drm_buf*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.drm_file*, %struct.drm_file** %12, align 8
  store %struct.drm_file* %13, %struct.drm_file** %6, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.drm_buf*, %struct.drm_buf** %23, align 8
  store %struct.drm_buf* %24, %struct.drm_buf** %9, align 8
  %25 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %26 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load i32, i32* @VM_DONTCOPY, align 4
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @I810_BUF_MAPPED, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %36, i64 %39, i32 %42, i64 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

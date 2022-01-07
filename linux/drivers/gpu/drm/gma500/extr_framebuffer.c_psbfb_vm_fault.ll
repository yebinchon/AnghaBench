; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.psb_framebuffer* }
%struct.psb_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64 }
%struct.gtt_range = type { i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PFN_DEV = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @psbfb_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbfb_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.psb_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.gtt_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %14 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %3, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %18, align 8
  store %struct.psb_framebuffer* %19, %struct.psb_framebuffer** %4, align 8
  %20 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %4, align 8
  %21 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %5, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.drm_psb_private*, %struct.drm_psb_private** %25, align 8
  store %struct.drm_psb_private* %26, %struct.drm_psb_private** %6, align 8
  %27 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %4, align 8
  %28 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.gtt_range* @to_gtt_range(i32 %32)
  store %struct.gtt_range* %33, %struct.gtt_range** %7, align 8
  %34 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %36 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.gtt_range*, %struct.gtt_range** %7, align 8
  %39 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  store i64 %41, i64* %13, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %43 = call i32 @vma_pages(%struct.vm_area_struct* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %48 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = sub i64 %46, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pgprot_noncached(i32 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %86, %1
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @PAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* @PFN_DEV, align 4
  %71 = call i32 @__pfn_to_pfn_t(i64 %69, i32 %70)
  %72 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %67, i64 %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @VM_FAULT_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %89

79:                                               ; preds = %63
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %59

89:                                               ; preds = %78, %59
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.gtt_range* @to_gtt_range(i32) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__pfn_to_pfn_t(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

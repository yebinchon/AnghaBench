; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.psb_fbdev* }
%struct.psb_fbdev = type { %struct.psb_framebuffer }
%struct.psb_framebuffer = type { i64 }
%struct.vm_area_struct = type { i64, i32, i8*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@psbfb_vm_ops = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @psbfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbfb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.psb_fbdev*, align 8
  %7 = alloca %struct.psb_framebuffer*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.psb_fbdev*, %struct.psb_fbdev** %9, align 8
  store %struct.psb_fbdev* %10, %struct.psb_fbdev** %6, align 8
  %11 = load %struct.psb_fbdev*, %struct.psb_fbdev** %6, align 8
  %12 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %11, i32 0, i32 0
  store %struct.psb_framebuffer* %12, %struct.psb_framebuffer** %7, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 -1, %24
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %32 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %42 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 3
  store i32* @psbfb_vm_ops, i32** %45, align 8
  %46 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %7, align 8
  %47 = bitcast %struct.psb_framebuffer* %46 to i8*
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @VM_IO, align 4
  %51 = load i32, i32* @VM_MIXEDMAP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @VM_DONTEXPAND, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VM_DONTDUMP, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %43, %27, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

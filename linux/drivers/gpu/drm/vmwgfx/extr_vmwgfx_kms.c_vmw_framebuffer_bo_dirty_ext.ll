; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_bo_dirty_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_bo_dirty_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i32 }
%struct.vmw_private = type { i64 }

@vmw_du_legacy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @vmw_framebuffer_bo_dirty_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_framebuffer_bo_dirty_ext(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_clip_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmw_private*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vmw_private* @vmw_priv(i32 %17)
  store %struct.vmw_private* %18, %struct.vmw_private** %14, align 8
  %19 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %20 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @vmw_du_legacy, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @vmw_framebuffer_bo_dirty(%struct.drm_framebuffer* %25, %struct.drm_file* %26, i32 %27, i32 %28, %struct.drm_clip_rect* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %40

32:                                               ; preds = %6
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @drm_atomic_helper_dirtyfb(%struct.drm_framebuffer* %33, %struct.drm_file* %34, i32 %35, i32 %36, %struct.drm_clip_rect* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @vmw_framebuffer_bo_dirty(%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32) #1

declare dso_local i32 @drm_atomic_helper_dirtyfb(%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

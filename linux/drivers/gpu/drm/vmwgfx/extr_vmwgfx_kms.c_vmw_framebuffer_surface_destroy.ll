; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_surface_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_surface_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.vmw_framebuffer_surface = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @vmw_framebuffer_surface_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_framebuffer_surface_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.vmw_framebuffer_surface*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.vmw_framebuffer_surface* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer* %4)
  store %struct.vmw_framebuffer_surface* %5, %struct.vmw_framebuffer_surface** %3, align 8
  %6 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %7 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %6)
  %8 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %8, i32 0, i32 1
  %10 = call i32 @vmw_surface_unreference(i32* %9)
  %11 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %3, align 8
  %12 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %3, align 8
  %18 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @ttm_base_object_unref(i64* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %3, align 8
  %23 = call i32 @kfree(%struct.vmw_framebuffer_surface* %22)
  ret void
}

declare dso_local %struct.vmw_framebuffer_surface* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @vmw_surface_unreference(i32*) #1

declare dso_local i32 @ttm_base_object_unref(i64*) #1

declare dso_local i32 @kfree(%struct.vmw_framebuffer_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

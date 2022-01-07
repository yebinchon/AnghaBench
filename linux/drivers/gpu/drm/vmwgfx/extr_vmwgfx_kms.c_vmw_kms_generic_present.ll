; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_generic_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_generic_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_framebuffer = type { i32 }
%struct.vmw_surface = type { i32 }
%struct.drm_vmw_rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.drm_file*, %struct.vmw_framebuffer*, %struct.vmw_surface*, i32, i32, i32, %struct.drm_vmw_rect*, i32)* @vmw_kms_generic_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_kms_generic_present(%struct.vmw_private* %0, %struct.drm_file* %1, %struct.vmw_framebuffer* %2, %struct.vmw_surface* %3, i32 %4, i32 %5, i32 %6, %struct.drm_vmw_rect* %7, i32 %8) #0 {
  %10 = alloca %struct.vmw_private*, align 8
  %11 = alloca %struct.drm_file*, align 8
  %12 = alloca %struct.vmw_framebuffer*, align 8
  %13 = alloca %struct.vmw_surface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.drm_vmw_rect*, align 8
  %18 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %10, align 8
  store %struct.drm_file* %1, %struct.drm_file** %11, align 8
  store %struct.vmw_framebuffer* %2, %struct.vmw_framebuffer** %12, align 8
  store %struct.vmw_surface* %3, %struct.vmw_surface** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.drm_vmw_rect* %7, %struct.drm_vmw_rect** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %20 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %21 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %17, align 8
  %22 = load %struct.vmw_surface*, %struct.vmw_surface** %13, align 8
  %23 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %22, i32 0, i32 0
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %18, align 4
  %27 = call i32 @vmw_kms_sou_do_surface_dirty(%struct.vmw_private* %19, %struct.vmw_framebuffer* %20, i32* null, %struct.drm_vmw_rect* %21, i32* %23, i32 %24, i32 %25, i32 %26, i32 1, i32* null, i32* null)
  ret i32 %27
}

declare dso_local i32 @vmw_kms_sou_do_surface_dirty(%struct.vmw_private*, %struct.vmw_framebuffer*, i32*, %struct.drm_vmw_rect*, i32*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_reference_ext_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_reference_ext_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_vmw_gb_surface_reference_ext_arg = type { %struct.drm_vmw_gb_surface_ref_ext_rep }
%struct.drm_vmw_gb_surface_ref_ext_rep = type { i32 }
%struct.drm_vmw_surface_arg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_gb_surface_reference_ext_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %union.drm_vmw_gb_surface_reference_ext_arg*, align 8
  %8 = alloca %struct.drm_vmw_surface_arg*, align 8
  %9 = alloca %struct.drm_vmw_gb_surface_ref_ext_rep*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %union.drm_vmw_gb_surface_reference_ext_arg*
  store %union.drm_vmw_gb_surface_reference_ext_arg* %11, %union.drm_vmw_gb_surface_reference_ext_arg** %7, align 8
  %12 = load %union.drm_vmw_gb_surface_reference_ext_arg*, %union.drm_vmw_gb_surface_reference_ext_arg** %7, align 8
  %13 = bitcast %union.drm_vmw_gb_surface_reference_ext_arg* %12 to %struct.drm_vmw_surface_arg*
  store %struct.drm_vmw_surface_arg* %13, %struct.drm_vmw_surface_arg** %8, align 8
  %14 = load %union.drm_vmw_gb_surface_reference_ext_arg*, %union.drm_vmw_gb_surface_reference_ext_arg** %7, align 8
  %15 = bitcast %union.drm_vmw_gb_surface_reference_ext_arg* %14 to %struct.drm_vmw_gb_surface_ref_ext_rep*
  store %struct.drm_vmw_gb_surface_ref_ext_rep* %15, %struct.drm_vmw_gb_surface_ref_ext_rep** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_vmw_surface_arg*, %struct.drm_vmw_surface_arg** %8, align 8
  %18 = load %struct.drm_vmw_gb_surface_ref_ext_rep*, %struct.drm_vmw_gb_surface_ref_ext_rep** %9, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %20 = call i32 @vmw_gb_surface_reference_internal(%struct.drm_device* %16, %struct.drm_vmw_surface_arg* %17, %struct.drm_vmw_gb_surface_ref_ext_rep* %18, %struct.drm_file* %19)
  ret i32 %20
}

declare dso_local i32 @vmw_gb_surface_reference_internal(%struct.drm_device*, %struct.drm_vmw_surface_arg*, %struct.drm_vmw_gb_surface_ref_ext_rep*, %struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

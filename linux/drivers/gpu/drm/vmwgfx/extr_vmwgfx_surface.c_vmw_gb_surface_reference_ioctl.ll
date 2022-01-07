; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_reference_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_reference_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_vmw_gb_surface_reference_arg = type { %struct.drm_vmw_gb_surface_ref_rep }
%struct.drm_vmw_gb_surface_ref_rep = type { i32, i32 }
%struct.drm_vmw_surface_arg = type { i32 }
%struct.drm_vmw_gb_surface_ref_ext_rep = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_gb_surface_reference_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_vmw_gb_surface_reference_arg*, align 8
  %9 = alloca %struct.drm_vmw_surface_arg*, align 8
  %10 = alloca %struct.drm_vmw_gb_surface_ref_rep*, align 8
  %11 = alloca %struct.drm_vmw_gb_surface_ref_ext_rep, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %union.drm_vmw_gb_surface_reference_arg*
  store %union.drm_vmw_gb_surface_reference_arg* %14, %union.drm_vmw_gb_surface_reference_arg** %8, align 8
  %15 = load %union.drm_vmw_gb_surface_reference_arg*, %union.drm_vmw_gb_surface_reference_arg** %8, align 8
  %16 = bitcast %union.drm_vmw_gb_surface_reference_arg* %15 to %struct.drm_vmw_surface_arg*
  store %struct.drm_vmw_surface_arg* %16, %struct.drm_vmw_surface_arg** %9, align 8
  %17 = load %union.drm_vmw_gb_surface_reference_arg*, %union.drm_vmw_gb_surface_reference_arg** %8, align 8
  %18 = bitcast %union.drm_vmw_gb_surface_reference_arg* %17 to %struct.drm_vmw_gb_surface_ref_rep*
  store %struct.drm_vmw_gb_surface_ref_rep* %18, %struct.drm_vmw_gb_surface_ref_rep** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_vmw_surface_arg*, %struct.drm_vmw_surface_arg** %9, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = call i32 @vmw_gb_surface_reference_internal(%struct.drm_device* %19, %struct.drm_vmw_surface_arg* %20, %struct.drm_vmw_gb_surface_ref_ext_rep* %11, %struct.drm_file* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.drm_vmw_gb_surface_ref_ext_rep, %struct.drm_vmw_gb_surface_ref_ext_rep* %11, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_vmw_gb_surface_ref_rep*, %struct.drm_vmw_gb_surface_ref_rep** %10, align 8
  %35 = getelementptr inbounds %struct.drm_vmw_gb_surface_ref_rep, %struct.drm_vmw_gb_surface_ref_rep* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.drm_vmw_gb_surface_ref_ext_rep, %struct.drm_vmw_gb_surface_ref_ext_rep* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_vmw_gb_surface_ref_rep*, %struct.drm_vmw_gb_surface_ref_rep** %10, align 8
  %39 = getelementptr inbounds %struct.drm_vmw_gb_surface_ref_rep, %struct.drm_vmw_gb_surface_ref_rep* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @vmw_gb_surface_reference_internal(%struct.drm_device*, %struct.drm_vmw_surface_arg*, %struct.drm_vmw_gb_surface_ref_ext_rep*, %struct.drm_file*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

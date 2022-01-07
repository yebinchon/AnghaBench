; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_framebuffer = type { i32 }
%struct.vmw_surface = type { i32 }
%struct.drm_vmw_rect = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Present called with invalid display system.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_present(%struct.vmw_private* %0, %struct.drm_file* %1, %struct.vmw_framebuffer* %2, %struct.vmw_surface* %3, i32 %4, i32 %5, i32 %6, %struct.drm_vmw_rect* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_private*, align 8
  %12 = alloca %struct.drm_file*, align 8
  %13 = alloca %struct.vmw_framebuffer*, align 8
  %14 = alloca %struct.vmw_surface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_vmw_rect*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %11, align 8
  store %struct.drm_file* %1, %struct.drm_file** %12, align 8
  store %struct.vmw_framebuffer* %2, %struct.vmw_framebuffer** %13, align 8
  store %struct.vmw_surface* %3, %struct.vmw_surface** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.drm_vmw_rect* %7, %struct.drm_vmw_rect** %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %45 [
    i32 128, label %24
    i32 129, label %34
  ]

24:                                               ; preds = %9
  %25 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  %26 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %13, align 8
  %27 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %18, align 8
  %28 = load %struct.vmw_surface*, %struct.vmw_surface** %14, align 8
  %29 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %28, i32 0, i32 0
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @vmw_kms_stdu_surface_dirty(%struct.vmw_private* %25, %struct.vmw_framebuffer* %26, i32* null, %struct.drm_vmw_rect* %27, i32* %29, i32 %30, i32 %31, i32 %32, i32 1, i32* null, i32* null)
  store i32 %33, i32* %20, align 4
  br label %49

34:                                               ; preds = %9
  %35 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  %36 = load %struct.drm_file*, %struct.drm_file** %12, align 8
  %37 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %13, align 8
  %38 = load %struct.vmw_surface*, %struct.vmw_surface** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %18, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @vmw_kms_generic_present(%struct.vmw_private* %35, %struct.drm_file* %36, %struct.vmw_framebuffer* %37, %struct.vmw_surface* %38, i32 %39, i32 %40, i32 %41, %struct.drm_vmw_rect* %42, i32 %43)
  store i32 %44, i32* %20, align 4
  br label %49

45:                                               ; preds = %9
  %46 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %20, align 4
  br label %49

49:                                               ; preds = %45, %34, %24
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  %56 = call i32 @vmw_fifo_flush(%struct.vmw_private* %55, i32 0)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @vmw_kms_stdu_surface_dirty(%struct.vmw_private*, %struct.vmw_framebuffer*, i32*, %struct.drm_vmw_rect*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @vmw_kms_generic_present(%struct.vmw_private*, %struct.drm_file*, %struct.vmw_framebuffer*, %struct.vmw_surface*, i32, i32, i32, %struct.drm_vmw_rect*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vmw_fifo_flush(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

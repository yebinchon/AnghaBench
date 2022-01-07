; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { i32 }
%struct.drm_vmw_control_stream_arg = type { i32, i32, i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_resource = type { i32 }
%struct.TYPE_2__ = type { %struct.ttm_object_file* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_overlay_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.ttm_object_file*, align 8
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.vmw_overlay*, align 8
  %11 = alloca %struct.drm_vmw_control_stream_arg*, align 8
  %12 = alloca %struct.vmw_buffer_object*, align 8
  %13 = alloca %struct.vmw_resource*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = call %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ttm_object_file*, %struct.ttm_object_file** %17, align 8
  store %struct.ttm_object_file* %18, %struct.ttm_object_file** %8, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %19)
  store %struct.vmw_private* %20, %struct.vmw_private** %9, align 8
  %21 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 0
  %23 = load %struct.vmw_overlay*, %struct.vmw_overlay** %22, align 8
  store %struct.vmw_overlay* %23, %struct.vmw_overlay** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.drm_vmw_control_stream_arg*
  store %struct.drm_vmw_control_stream_arg* %25, %struct.drm_vmw_control_stream_arg** %11, align 8
  %26 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %27 = call i32 @vmw_overlay_available(%struct.vmw_private* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %77

32:                                               ; preds = %3
  %33 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %34 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %35 = load %struct.drm_vmw_control_stream_arg*, %struct.drm_vmw_control_stream_arg** %11, align 8
  %36 = getelementptr inbounds %struct.drm_vmw_control_stream_arg, %struct.drm_vmw_control_stream_arg* %35, i32 0, i32 1
  %37 = call i32 @vmw_user_stream_lookup(%struct.vmw_private* %33, %struct.ttm_object_file* %34, i32* %36, %struct.vmw_resource** %13)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %32
  %43 = load %struct.vmw_overlay*, %struct.vmw_overlay** %10, align 8
  %44 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.drm_vmw_control_stream_arg*, %struct.drm_vmw_control_stream_arg** %11, align 8
  %47 = getelementptr inbounds %struct.drm_vmw_control_stream_arg, %struct.drm_vmw_control_stream_arg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %52 = load %struct.drm_vmw_control_stream_arg*, %struct.drm_vmw_control_stream_arg** %11, align 8
  %53 = getelementptr inbounds %struct.drm_vmw_control_stream_arg, %struct.drm_vmw_control_stream_arg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vmw_overlay_stop(%struct.vmw_private* %51, i32 %54, i32 0, i32 1)
  store i32 %55, i32* %14, align 4
  br label %71

56:                                               ; preds = %42
  %57 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %58 = load %struct.drm_vmw_control_stream_arg*, %struct.drm_vmw_control_stream_arg** %11, align 8
  %59 = getelementptr inbounds %struct.drm_vmw_control_stream_arg, %struct.drm_vmw_control_stream_arg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vmw_user_bo_lookup(%struct.ttm_object_file* %57, i32 %60, %struct.vmw_buffer_object** %12, i32* null)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %56
  %66 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %67 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %68 = load %struct.drm_vmw_control_stream_arg*, %struct.drm_vmw_control_stream_arg** %11, align 8
  %69 = call i32 @vmw_overlay_update_stream(%struct.vmw_private* %66, %struct.vmw_buffer_object* %67, %struct.drm_vmw_control_stream_arg* %68, i32 1)
  store i32 %69, i32* %14, align 4
  %70 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %12)
  br label %71

71:                                               ; preds = %65, %64, %50
  %72 = load %struct.vmw_overlay*, %struct.vmw_overlay** %10, align 8
  %73 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %13)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %40, %29
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @vmw_overlay_available(%struct.vmw_private*) #1

declare dso_local i32 @vmw_user_stream_lookup(%struct.vmw_private*, %struct.ttm_object_file*, i32*, %struct.vmw_resource**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_overlay_stop(%struct.vmw_private*, i32, i32, i32) #1

declare dso_local i32 @vmw_user_bo_lookup(%struct.ttm_object_file*, i32, %struct.vmw_buffer_object**, i32*) #1

declare dso_local i32 @vmw_overlay_update_stream(%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.drm_vmw_control_stream_arg*, i32) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

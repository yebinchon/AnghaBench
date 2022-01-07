; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_lookup_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_lookup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_surface = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_resource = type { i32 }

@user_surface_converter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_lookup_handle(%struct.vmw_private* %0, %struct.ttm_object_file* %1, i32 %2, %struct.vmw_surface** %3, %struct.vmw_buffer_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.ttm_object_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_surface**, align 8
  %11 = alloca %struct.vmw_buffer_object**, align 8
  %12 = alloca %struct.vmw_resource*, align 8
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vmw_surface** %3, %struct.vmw_surface*** %10, align 8
  store %struct.vmw_buffer_object** %4, %struct.vmw_buffer_object*** %11, align 8
  %14 = load %struct.vmw_surface**, %struct.vmw_surface*** %10, align 8
  %15 = load %struct.vmw_surface*, %struct.vmw_surface** %14, align 8
  %16 = icmp ne %struct.vmw_surface* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %11, align 8
  %19 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %18, align 8
  %20 = icmp ne %struct.vmw_buffer_object* %19, null
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ true, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %26 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @user_surface_converter, align 4
  %29 = call i32 @vmw_user_resource_lookup_handle(%struct.vmw_private* %25, %struct.ttm_object_file* %26, i32 %27, i32 %28, %struct.vmw_resource** %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %34 = call %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource* %33)
  %35 = load %struct.vmw_surface**, %struct.vmw_surface*** %10, align 8
  store %struct.vmw_surface* %34, %struct.vmw_surface** %35, align 8
  store i32 0, i32* %6, align 4
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.vmw_surface**, %struct.vmw_surface*** %10, align 8
  store %struct.vmw_surface* null, %struct.vmw_surface** %37, align 8
  %38 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %11, align 8
  %41 = call i32 @vmw_user_bo_lookup(%struct.ttm_object_file* %38, i32 %39, %struct.vmw_buffer_object** %40, i32* null)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_user_resource_lookup_handle(%struct.vmw_private*, %struct.ttm_object_file*, i32, i32, %struct.vmw_resource**) #1

declare dso_local %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_user_bo_lookup(%struct.ttm_object_file*, i32, %struct.vmw_buffer_object**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_resource_lookup_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_resource_lookup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_user_resource_conv = type { i64, %struct.vmw_resource* (%struct.ttm_base_object*)* }
%struct.vmw_resource = type { i32 }
%struct.ttm_base_object = type opaque
%struct.ttm_base_object.0 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_resource_lookup_handle(%struct.vmw_private* %0, %struct.ttm_object_file* %1, i32 %2, %struct.vmw_user_resource_conv* %3, %struct.vmw_resource** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.ttm_object_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_user_resource_conv*, align 8
  %11 = alloca %struct.vmw_resource**, align 8
  %12 = alloca %struct.ttm_base_object.0*, align 8
  %13 = alloca %struct.vmw_resource*, align 8
  %14 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vmw_user_resource_conv* %3, %struct.vmw_user_resource_conv** %10, align 8
  store %struct.vmw_resource** %4, %struct.vmw_resource*** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.ttm_base_object.0* @ttm_base_object_lookup(%struct.ttm_object_file* %17, i32 %18)
  store %struct.ttm_base_object.0* %19, %struct.ttm_base_object.0** %12, align 8
  %20 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %12, align 8
  %21 = icmp eq %struct.ttm_base_object.0* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %54

28:                                               ; preds = %5
  %29 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %12, align 8
  %30 = call i64 @ttm_base_object_type(%struct.ttm_base_object.0* %29)
  %31 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %10, align 8
  %32 = getelementptr inbounds %struct.vmw_user_resource_conv, %struct.vmw_user_resource_conv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %51

39:                                               ; preds = %28
  %40 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %10, align 8
  %41 = getelementptr inbounds %struct.vmw_user_resource_conv, %struct.vmw_user_resource_conv* %40, i32 0, i32 1
  %42 = load %struct.vmw_resource* (%struct.ttm_base_object*)*, %struct.vmw_resource* (%struct.ttm_base_object*)** %41, align 8
  %43 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %12, align 8
  %44 = bitcast %struct.ttm_base_object.0* %43 to %struct.ttm_base_object*
  %45 = call %struct.vmw_resource* %42(%struct.ttm_base_object* %44)
  store %struct.vmw_resource* %45, %struct.vmw_resource** %13, align 8
  %46 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %47 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %46, i32 0, i32 0
  %48 = call i32 @kref_get(i32* %47)
  %49 = load %struct.vmw_resource*, %struct.vmw_resource** %13, align 8
  %50 = load %struct.vmw_resource**, %struct.vmw_resource*** %11, align 8
  store %struct.vmw_resource* %49, %struct.vmw_resource** %50, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %39, %38
  %52 = call i32 @ttm_base_object_unref(%struct.ttm_base_object.0** %12)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.ttm_base_object.0* @ttm_base_object_lookup(%struct.ttm_object_file*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_base_object_type(%struct.ttm_base_object.0*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object.0**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

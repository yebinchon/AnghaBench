; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_resource_noref_lookup_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_user_resource_noref_lookup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32 }
%struct.vmw_private = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_user_resource_conv = type { i64, %struct.vmw_resource* (%struct.ttm_base_object*)* }
%struct.ttm_base_object = type opaque
%struct.ttm_base_object.0 = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_resource* @vmw_user_resource_noref_lookup_handle(%struct.vmw_private* %0, %struct.ttm_object_file* %1, i32 %2, %struct.vmw_user_resource_conv* %3) #0 {
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.ttm_object_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_user_resource_conv*, align 8
  %10 = alloca %struct.ttm_base_object.0*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vmw_user_resource_conv* %3, %struct.vmw_user_resource_conv** %9, align 8
  %11 = load %struct.ttm_object_file*, %struct.ttm_object_file** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.ttm_base_object.0* @ttm_base_object_noref_lookup(%struct.ttm_object_file* %11, i32 %12)
  store %struct.ttm_base_object.0* %13, %struct.ttm_base_object.0** %10, align 8
  %14 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %10, align 8
  %15 = icmp ne %struct.ttm_base_object.0* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ESRCH, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vmw_resource* @ERR_PTR(i32 %18)
  store %struct.vmw_resource* %19, %struct.vmw_resource** %5, align 8
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %10, align 8
  %22 = call i64 @ttm_base_object_type(%struct.ttm_base_object.0* %21)
  %23 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %9, align 8
  %24 = getelementptr inbounds %struct.vmw_user_resource_conv, %struct.vmw_user_resource_conv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = call i32 (...) @ttm_base_object_noref_release()
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.vmw_resource* @ERR_PTR(i32 %33)
  store %struct.vmw_resource* %34, %struct.vmw_resource** %5, align 8
  br label %42

35:                                               ; preds = %20
  %36 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %9, align 8
  %37 = getelementptr inbounds %struct.vmw_user_resource_conv, %struct.vmw_user_resource_conv* %36, i32 0, i32 1
  %38 = load %struct.vmw_resource* (%struct.ttm_base_object*)*, %struct.vmw_resource* (%struct.ttm_base_object*)** %37, align 8
  %39 = load %struct.ttm_base_object.0*, %struct.ttm_base_object.0** %10, align 8
  %40 = bitcast %struct.ttm_base_object.0* %39 to %struct.ttm_base_object*
  %41 = call %struct.vmw_resource* %38(%struct.ttm_base_object* %40)
  store %struct.vmw_resource* %41, %struct.vmw_resource** %5, align 8
  br label %42

42:                                               ; preds = %35, %30, %16
  %43 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  ret %struct.vmw_resource* %43
}

declare dso_local %struct.ttm_base_object.0* @ttm_base_object_noref_lookup(%struct.ttm_object_file*, i32) #1

declare dso_local %struct.vmw_resource* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_base_object_type(%struct.ttm_base_object.0*) #1

declare dso_local i32 @ttm_base_object_noref_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

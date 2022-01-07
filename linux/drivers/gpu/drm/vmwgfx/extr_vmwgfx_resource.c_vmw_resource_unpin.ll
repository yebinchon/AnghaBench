; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i64, %struct.vmw_buffer_object*, %struct.vmw_private* }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_private = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_resource_unpin(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %6 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %7 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %6, i32 0, i32 2
  %8 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  store %struct.vmw_private* %8, %struct.vmw_private** %3, align 8
  %9 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 0
  %11 = call i32 @ttm_read_lock(i32* %10, i32 0)
  %12 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %16 = call i32 @vmw_resource_reserve(%struct.vmw_resource* %15, i32 0, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %20 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %26 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %32 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %31, i32 0, i32 1
  %33 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %32, align 8
  %34 = icmp ne %struct.vmw_buffer_object* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %37 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %36, i32 0, i32 1
  %38 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %37, align 8
  store %struct.vmw_buffer_object* %38, %struct.vmw_buffer_object** %5, align 8
  %39 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %40 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %39, i32 0, i32 0
  %41 = call i32 @ttm_bo_reserve(i32* %40, i32 0, i32 0, i32* null)
  %42 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %43 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %42, i32 0)
  %44 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %44, i32 0, i32 0
  %46 = call i32 @ttm_bo_unreserve(i32* %45)
  br label %47

47:                                               ; preds = %35, %30, %1
  %48 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %49 = call i32 @vmw_resource_unreserve(%struct.vmw_resource* %48, i32 0, i32 0, i32 0, i32* null, i64 0)
  %50 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 0
  %55 = call i32 @ttm_read_unlock(i32* %54)
  ret void
}

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_resource_reserve(%struct.vmw_resource*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

declare dso_local i32 @vmw_resource_unreserve(%struct.vmw_resource*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i64, %struct.TYPE_2__*, %struct.vmw_buffer_object*, %struct.vmw_private* }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_buffer_object = type { i32, i32 }
%struct.vmw_private = type { i32, i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_resource_pin(%struct.vmw_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_operation_ctx, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %5, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %5, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %12, i32 0, i32 3
  %14 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  store %struct.vmw_private* %14, %struct.vmw_private** %6, align 8
  %15 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %16 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ttm_write_lock(i32* %16, i32 %17)
  %19 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @vmw_resource_reserve(%struct.vmw_resource* %22, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %92

28:                                               ; preds = %2
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %28
  store %struct.vmw_buffer_object* null, %struct.vmw_buffer_object** %8, align 8
  %34 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %35 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %34, i32 0, i32 2
  %36 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %35, align 8
  %37 = icmp ne %struct.vmw_buffer_object* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %40 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %39, i32 0, i32 2
  %41 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %40, align 8
  store %struct.vmw_buffer_object* %41, %struct.vmw_buffer_object** %8, align 8
  %42 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %43 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ttm_bo_reserve(i32* %43, i32 %44, i32 0, i32* null)
  %46 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %47 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %38
  %51 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %52 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %51, i32 0, i32 0
  %53 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %54 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ttm_bo_validate(i32* %52, i32 %57, %struct.ttm_operation_ctx* %5)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %63 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %62, i32 0, i32 0
  %64 = call i32 @ttm_bo_unreserve(i32* %63)
  br label %89

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %68 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %33
  %70 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @vmw_resource_validate(%struct.vmw_resource* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %74 = icmp ne %struct.vmw_buffer_object* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %77 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %76, i32 0, i32 0
  %78 = call i32 @ttm_bo_unreserve(i32* %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %89

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %86 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84, %82, %61
  %90 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %91 = call i32 @vmw_resource_unreserve(%struct.vmw_resource* %90, i32 0, i32 0, i32 0, i32* null, i64 0)
  br label %92

92:                                               ; preds = %89, %27
  %93 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %94 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %97 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %96, i32 0, i32 0
  %98 = call i32 @ttm_write_unlock(i32* %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @ttm_write_lock(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_resource_reserve(%struct.vmw_resource*, i32, i32) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #1

declare dso_local i32 @ttm_bo_validate(i32*, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @vmw_resource_validate(%struct.vmw_resource*, i32) #1

declare dso_local i32 @vmw_resource_unreserve(%struct.vmw_resource*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

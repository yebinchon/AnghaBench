; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_placement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_pin_in_placement(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, %struct.ttm_placement* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_operation_ctx, align 4
  %11 = alloca %struct.ttm_buffer_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %7, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %10, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %10, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %17, i32 0, i32 1
  store %struct.ttm_buffer_object* %18, %struct.ttm_buffer_object** %11, align 8
  %19 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ttm_write_lock(i32* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %4
  %31 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %32 = call i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private* %31)
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %33, i32 %34, i32 0, i32* null)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %72

42:                                               ; preds = %30
  %43 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %44 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 0
  %51 = call i32 @ttm_bo_mem_compat(%struct.ttm_placement* %48, i32* %50, i32* %13)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %12, align 4
  br label %63

59:                                               ; preds = %42
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %61 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %62 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %60, %struct.ttm_placement* %61, %struct.ttm_operation_ctx* %10)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %68 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %71 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %70)
  br label %72

72:                                               ; preds = %69, %41
  %73 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %74 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %73, i32 0, i32 0
  %75 = call i32 @ttm_write_unlock(i32* %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %28
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @ttm_write_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private*) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement*, i32*, i32*) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

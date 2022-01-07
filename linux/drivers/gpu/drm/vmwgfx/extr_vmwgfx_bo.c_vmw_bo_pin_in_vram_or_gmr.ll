; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_vram_or_gmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_vram_or_gmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@vmw_vram_gmr_placement = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@vmw_vram_placement = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_pin_in_vram_or_gmr(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %15, i32 0, i32 1
  store %struct.ttm_buffer_object* %16, %struct.ttm_buffer_object** %9, align 8
  %17 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ttm_write_lock(i32* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %87

28:                                               ; preds = %3
  %29 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %30 = call i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private* %29)
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %31, i32 %32, i32 0, i32* null)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %82

40:                                               ; preds = %28
  %41 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %42 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = call i32 @ttm_bo_mem_compat(i32* @vmw_vram_gmr_placement, i32* %47, i32* %11)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %10, align 4
  br label %73

56:                                               ; preds = %40
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %58 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %57, i32* @vmw_vram_gmr_placement, %struct.ttm_operation_ctx* %8)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ERESTARTSYS, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %56
  br label %73

70:                                               ; preds = %64
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %72 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %71, i32* @vmw_vram_placement, %struct.ttm_operation_ctx* %8)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %69, %54
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %78 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %77, i32 1)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %81 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %80)
  br label %82

82:                                               ; preds = %79, %39
  %83 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %84 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %83, i32 0, i32 0
  %85 = call i32 @ttm_write_unlock(i32* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %26
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @ttm_write_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private*) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @ttm_bo_mem_compat(i32*, i32*, i32*) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, i32*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

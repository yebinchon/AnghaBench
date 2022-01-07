; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.ttm_validate_buffer = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_surface = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*, i32)* @vmw_legacy_srf_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_legacy_srf_dma(%struct.vmw_resource* %0, %struct.ttm_validate_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca %struct.ttm_validate_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_fence_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_surface*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store %struct.ttm_validate_buffer* %1, %struct.ttm_validate_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %15 = call %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource* %14)
  store %struct.vmw_surface* %15, %struct.vmw_surface** %11, align 8
  %16 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %16, i32 0, i32 0
  %18 = load %struct.vmw_private*, %struct.vmw_private** %17, align 8
  store %struct.vmw_private* %18, %struct.vmw_private** %13, align 8
  %19 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.vmw_surface*, %struct.vmw_surface** %11, align 8
  %27 = call i32 @vmw_surface_dma_size(%struct.vmw_surface* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32* @VMW_FIFO_RESERVE(%struct.vmw_private* %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %3
  %41 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vmw_bo_get_guest_ptr(i32 %43, i32* %8)
  %45 = load %struct.vmw_surface*, %struct.vmw_surface** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @vmw_surface_dma_encode(%struct.vmw_surface* %45, i32* %46, i32* %8, i32 %47)
  %49 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @vmw_fifo_commit(%struct.vmw_private* %49, i32 %50)
  %52 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %53 = call i32 @vmw_execbuf_fence_commands(i32* null, %struct.vmw_private* %52, %struct.vmw_fence_obj** %9, i32* null)
  %54 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %58 = call i32 @vmw_bo_fence_single(i32 %56, %struct.vmw_fence_obj* %57)
  %59 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %60 = icmp ne %struct.vmw_fence_obj* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %9)
  br label %66

66:                                               ; preds = %64, %40
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_surface_dma_size(%struct.vmw_surface*) #1

declare dso_local i32* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_bo_get_guest_ptr(i32, i32*) #1

declare dso_local i32 @vmw_surface_dma_encode(%struct.vmw_surface*, i32*, i32*, i32) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_execbuf_fence_commands(i32*, %struct.vmw_private*, %struct.vmw_fence_obj**, i32*) #1

declare dso_local i32 @vmw_bo_fence_single(i32, %struct.vmw_fence_obj*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

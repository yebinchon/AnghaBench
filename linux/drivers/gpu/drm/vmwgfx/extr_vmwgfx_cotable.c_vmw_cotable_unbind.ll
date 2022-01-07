; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.ttm_validate_buffer = type { %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.vmw_cotable = type { i32, i32 }
%struct.vmw_fence_obj = type { i32 }

@VMW_PL_MOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* @vmw_cotable_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cotable_unbind(%struct.vmw_resource* %0, i32 %1, %struct.ttm_validate_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_validate_buffer*, align 8
  %8 = alloca %struct.vmw_cotable*, align 8
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.ttm_buffer_object*, align 8
  %11 = alloca %struct.vmw_fence_obj*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_validate_buffer* %2, %struct.ttm_validate_buffer** %7, align 8
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %13 = call %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource* %12)
  store %struct.vmw_cotable* %13, %struct.vmw_cotable** %8, align 8
  %14 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %14, i32 0, i32 0
  %16 = load %struct.vmw_private*, %struct.vmw_private** %15, align 8
  store %struct.vmw_private* %16, %struct.vmw_private** %9, align 8
  %17 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 0
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %18, align 8
  store %struct.ttm_buffer_object* %19, %struct.ttm_buffer_object** %10, align 8
  %20 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %21 = call i32 @vmw_resource_mob_attached(%struct.vmw_resource* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VMW_PL_MOB, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON_ONCE(i32 %31)
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_resv_assert_held(i32 %36)
  %38 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %42 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %24
  %46 = load %struct.vmw_cotable*, %struct.vmw_cotable** %8, align 8
  %47 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @vmw_dx_context_scrub_cotables(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %24
  %52 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %53 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %56 = call i32 @vmw_execbuf_fence_commands(i32* null, %struct.vmw_private* %55, %struct.vmw_fence_obj** %11, i32* null)
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %58 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %11, align 8
  %59 = call i32 @vmw_bo_fence_single(%struct.ttm_buffer_object* %57, %struct.vmw_fence_obj* %58)
  %60 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %11, align 8
  %61 = icmp ne %struct.vmw_fence_obj* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %11)
  br label %67

67:                                               ; preds = %65, %51
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_dx_context_scrub_cotables(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vmw_execbuf_fence_commands(i32*, %struct.vmw_private*, %struct.vmw_fence_obj**, i32*) #1

declare dso_local i32 @vmw_bo_fence_single(%struct.ttm_buffer_object*, %struct.vmw_fence_obj*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

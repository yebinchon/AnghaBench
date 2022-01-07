; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.TYPE_6__*, %struct.vmw_private* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vmw_private = type { i32 }
%struct.ttm_validate_buffer = type { i32 }
%struct.vmw_fence_obj = type { i32 }

@VMW_PL_MOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* @vmw_dx_shader_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_dx_shader_unbind(%struct.vmw_resource* %0, i32 %1, %struct.ttm_validate_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_validate_buffer*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.vmw_fence_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_validate_buffer* %2, %struct.ttm_validate_buffer** %7, align 8
  %11 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %12 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %11, i32 0, i32 1
  %13 = load %struct.vmw_private*, %struct.vmw_private** %12, align 8
  store %struct.vmw_private* %13, %struct.vmw_private** %8, align 8
  %14 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VMW_PL_MOB, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %26 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %29 = call i32 @vmw_dx_shader_scrub(%struct.vmw_resource* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %31 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %39 = call i32 @vmw_execbuf_fence_commands(i32* null, %struct.vmw_private* %38, %struct.vmw_fence_obj** %9, i32* null)
  %40 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %44 = call i32 @vmw_bo_fence_single(i32 %42, %struct.vmw_fence_obj* %43)
  %45 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %9, align 8
  %46 = icmp ne %struct.vmw_fence_obj* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %9)
  br label %52

52:                                               ; preds = %50, %37
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_dx_shader_scrub(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

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

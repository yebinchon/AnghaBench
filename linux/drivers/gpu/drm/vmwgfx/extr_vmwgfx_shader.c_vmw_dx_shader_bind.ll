; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.ttm_validate_buffer = type { %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VMW_PL_MOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)* @vmw_dx_shader_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_dx_shader_bind(%struct.vmw_resource* %0, %struct.ttm_validate_buffer* %1) #0 {
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca %struct.ttm_validate_buffer*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  store %struct.ttm_validate_buffer* %1, %struct.ttm_validate_buffer** %4, align 8
  %7 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %7, i32 0, i32 0
  %9 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  store %struct.vmw_private* %9, %struct.vmw_private** %5, align 8
  %10 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %10, i32 0, i32 0
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  store %struct.ttm_buffer_object* %12, %struct.ttm_buffer_object** %6, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VMW_PL_MOB, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %25 = call i32 @vmw_dx_shader_unscrub(%struct.vmw_resource* %24)
  %26 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %27 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_dx_shader_unscrub(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

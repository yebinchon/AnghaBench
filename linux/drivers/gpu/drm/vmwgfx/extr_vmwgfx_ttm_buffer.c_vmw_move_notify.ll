; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_move_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_move_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, i32, %struct.ttm_mem_reg*)* @vmw_move_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_move_notify(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %6, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %8 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %9 = call i32 @vmw_bo_move_notify(%struct.ttm_buffer_object* %7, %struct.ttm_mem_reg* %8)
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %12 = call i32 @vmw_query_move_notify(%struct.ttm_buffer_object* %10, %struct.ttm_mem_reg* %11)
  ret void
}

declare dso_local i32 @vmw_bo_move_notify(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @vmw_query_move_notify(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

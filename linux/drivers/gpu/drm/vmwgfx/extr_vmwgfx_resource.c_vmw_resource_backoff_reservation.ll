; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_backoff_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_backoff_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ww_acquire_ctx = type { i32 }
%struct.ttm_validate_buffer = type { i32*, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ww_acquire_ctx*, %struct.ttm_validate_buffer*)* @vmw_resource_backoff_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_resource_backoff_reservation(%struct.ww_acquire_ctx* %0, %struct.ttm_validate_buffer* %1) #0 {
  %3 = alloca %struct.ww_acquire_ctx*, align 8
  %4 = alloca %struct.ttm_validate_buffer*, align 8
  %5 = alloca %struct.list_head, align 4
  store %struct.ww_acquire_ctx* %0, %struct.ww_acquire_ctx** %3, align 8
  store %struct.ttm_validate_buffer* %1, %struct.ttm_validate_buffer** %4, align 8
  %6 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %16 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %17, %struct.list_head* %5)
  %19 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %3, align 8
  %20 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %19, %struct.list_head* %5)
  %21 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ttm_bo_put(i32* %23)
  %25 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @ttm_bo_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

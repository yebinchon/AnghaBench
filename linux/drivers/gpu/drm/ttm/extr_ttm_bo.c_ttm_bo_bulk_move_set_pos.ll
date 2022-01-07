; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_bulk_move_set_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_bulk_move_set_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lru_bulk_move_pos = type { %struct.ttm_buffer_object*, %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_lru_bulk_move_pos*, %struct.ttm_buffer_object*)* @ttm_bo_bulk_move_set_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_bulk_move_set_pos(%struct.ttm_lru_bulk_move_pos* %0, %struct.ttm_buffer_object* %1) #0 {
  %3 = alloca %struct.ttm_lru_bulk_move_pos*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_lru_bulk_move_pos* %0, %struct.ttm_lru_bulk_move_pos** %3, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %4, align 8
  %5 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %3, align 8
  %6 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %5, i32 0, i32 1
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %8 = icmp ne %struct.ttm_buffer_object* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %3, align 8
  %12 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %11, i32 0, i32 1
  store %struct.ttm_buffer_object* %10, %struct.ttm_buffer_object** %12, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %15 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %15, i32 0, i32 0
  store %struct.ttm_buffer_object* %14, %struct.ttm_buffer_object** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

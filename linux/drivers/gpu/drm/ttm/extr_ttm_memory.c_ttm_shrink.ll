; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32 }
%struct.ttm_operation_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_global*, i32, i32, %struct.ttm_operation_ctx*)* @ttm_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_shrink(%struct.ttm_mem_global* %0, i32 %1, i32 %2, %struct.ttm_operation_ctx* %3) #0 {
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ttm_operation_ctx* %3, %struct.ttm_operation_ctx** %8, align 8
  %10 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %37, %4
  %14 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ttm_zones_above_swap_target(%struct.ttm_mem_global* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %27 = call i32 @ttm_bo_swapout(i32 %25, %struct.ttm_operation_ctx* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %38

37:                                               ; preds = %19
  br label %13

38:                                               ; preds = %36, %13
  %39 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %40 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ttm_zones_above_swap_target(%struct.ttm_mem_global*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_bo_swapout(i32, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

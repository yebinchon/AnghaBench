; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_alloc_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_alloc_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32 }
%struct.ttm_mem_zone = type { i32 }
%struct.ttm_operation_ctx = type { i64 }

@TTM_MEMORY_ALLOC_RETRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i32, %struct.ttm_operation_ctx*)* @ttm_mem_global_alloc_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_global_alloc_zone(%struct.ttm_mem_global* %0, %struct.ttm_mem_zone* %1, i32 %2, %struct.ttm_operation_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_global*, align 8
  %7 = alloca %struct.ttm_mem_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_operation_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %6, align 8
  store %struct.ttm_mem_zone* %1, %struct.ttm_mem_zone** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ttm_operation_ctx* %3, %struct.ttm_operation_ctx** %9, align 8
  %11 = load i32, i32* @TTM_MEMORY_ALLOC_RETRIES, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %39, %4
  %13 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %6, align 8
  %14 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @ttm_mem_global_reserve(%struct.ttm_mem_global* %13, %struct.ttm_mem_zone* %14, i32 %15, i32 1)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %12
  %22 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %10, align 4
  %32 = icmp eq i32 %30, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %29
  %40 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 2
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 16
  %46 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %9, align 8
  %47 = call i32 @ttm_shrink(%struct.ttm_mem_global* %40, i32 0, i32 %45, %struct.ttm_operation_ctx* %46)
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %36, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_mem_global_reserve(%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i32, i32) #1

declare dso_local i32 @ttm_shrink(%struct.ttm_mem_global*, i32, i32, %struct.ttm_operation_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

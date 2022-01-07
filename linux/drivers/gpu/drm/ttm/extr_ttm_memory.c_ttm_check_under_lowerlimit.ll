; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_check_under_lowerlimit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_check_under_lowerlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i64 }
%struct.ttm_operation_ctx = type { i32 }

@TTM_OPT_FLAG_FORCE_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_check_under_lowerlimit(%struct.ttm_mem_global* %0, i64 %1, %struct.ttm_operation_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ttm_operation_ctx*, align 8
  %8 = alloca i64, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %7, align 8
  %9 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %7, align 8
  %10 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TTM_OPT_FLAG_FORCE_ALLOC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = call i64 (...) @get_nr_swap_pages()
  %18 = call i64 (...) @si_mem_available()
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @get_nr_swap_pages(...) #1

declare dso_local i64 @si_mem_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

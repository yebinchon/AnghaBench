; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { %struct.ttm_mem_zone*, i64, %struct.ttm_mem_zone* }
%struct.ttm_mem_zone = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_mem_global_free_page(%struct.ttm_mem_global* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.ttm_mem_zone* null, %struct.ttm_mem_zone** %7, align 8
  %8 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @page_to_pfn(%struct.page* %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %15, 1048576
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %18, i32 0, i32 0
  %20 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %19, align 8
  store %struct.ttm_mem_zone* %20, %struct.ttm_mem_zone** %7, align 8
  br label %21

21:                                               ; preds = %17, %12, %3
  %22 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %23 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ttm_mem_global_free_zone(%struct.ttm_mem_global* %22, %struct.ttm_mem_zone* %23, i32 %24)
  ret void
}

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @ttm_mem_global_free_zone(%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

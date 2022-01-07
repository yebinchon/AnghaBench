; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_get_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ttm_page_pool* }
%struct.ttm_page_pool = type { i32 }

@tt_cached = common dso_local global i32 0, align 4
@tt_wc = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_page_pool* (i32, i32, i32)* @ttm_get_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_page_pool* @ttm_get_pool(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_page_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @tt_cached, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.ttm_page_pool* null, %struct.ttm_page_pool** %4, align 8
  br label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @tt_wc, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %19

18:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store %struct.ttm_page_pool* null, %struct.ttm_page_pool** %4, align 8
  br label %45

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* %8, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %41, i64 %43
  store %struct.ttm_page_pool* %44, %struct.ttm_page_pool** %4, align 8
  br label %45

45:                                               ; preds = %38, %27, %12
  %46 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %4, align 8
  ret %struct.ttm_page_pool* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

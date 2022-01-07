; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_unpopulate_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_unpopulate_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@tt_unpopulated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_tt*, i32)* @ttm_pool_unpopulate_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_pool_unpopulate_helper(%struct.ttm_tt* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %12, align 8
  store %struct.ttm_mem_global* %13, %struct.ttm_mem_global** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %47

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %24 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i32 @ttm_mem_global_free_page(%struct.ttm_mem_global* %33, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %16
  %48 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %49 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %52 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %55 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %58 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ttm_put_pages(i32* %50, i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* @tt_unpopulated, align 4
  %62 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %63 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  ret void
}

declare dso_local i32 @ttm_mem_global_free_page(%struct.ttm_mem_global*, i32, i32) #1

declare dso_local i32 @ttm_put_pages(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

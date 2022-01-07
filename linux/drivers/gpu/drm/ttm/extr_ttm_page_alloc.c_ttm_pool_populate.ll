; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i32, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }
%struct.ttm_operation_ctx = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_pool_populate(%struct.ttm_tt* %0, %struct.ttm_operation_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_operation_ctx*, align 8
  %6 = alloca %struct.ttm_mem_global*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %5, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %14, align 8
  store %struct.ttm_mem_global* %15, %struct.ttm_mem_global** %6, align 8
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @tt_unpopulated, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %6, align 8
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %28 = call i64 @ttm_check_under_lowerlimit(%struct.ttm_mem_global* %23, i32 %26, %struct.ttm_operation_ctx* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %115

33:                                               ; preds = %22
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %44 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ttm_get_pages(i32* %36, i32 %39, i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %54 = call i32 @ttm_pool_unpopulate_helper(%struct.ttm_tt* %53, i32 0)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %87, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %60 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %57
  %64 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %6, align 8
  %65 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %74 = call i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global* %64, i32 %71, i32 %72, %struct.ttm_operation_ctx* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ttm_pool_unpopulate_helper(%struct.ttm_tt* %81, i32 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %115

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %92 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %95 = and i32 %93, %94
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %100 = call i32 @ttm_tt_swapin(%struct.ttm_tt* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %108 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %90
  %112 = load i64, i64* @tt_unbound, align 8
  %113 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %114 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %106, %80, %52, %30, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @ttm_check_under_lowerlimit(%struct.ttm_mem_global*, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_get_pages(i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_pool_unpopulate_helper(%struct.ttm_tt*, i32) #1

declare dso_local i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global*, i32, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_tt_swapin(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

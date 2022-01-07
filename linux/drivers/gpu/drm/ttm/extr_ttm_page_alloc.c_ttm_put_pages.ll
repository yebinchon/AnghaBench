; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.ttm_page_pool = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Erroneous page count. Leaking pages.\0A\00", align 1
@_manager = common dso_local global %struct.TYPE_4__* null, align 8
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32, i32, i32)* @ttm_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_put_pages(%struct.page** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_page_pool*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.ttm_page_pool* @ttm_get_pool(i32 %14, i32 0, i32 %15)
  store %struct.ttm_page_pool* %16, %struct.ttm_page_pool** %9, align 8
  %17 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %18 = icmp eq %struct.ttm_page_pool* %17, null
  br i1 %18, label %19, label %67

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %65, %31, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %25 = load %struct.page**, %struct.page*** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %20

34:                                               ; preds = %24
  %35 = load %struct.page**, %struct.page*** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = call i32 @page_count(%struct.page* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %34
  %45 = load %struct.page**, %struct.page*** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %47
  %49 = load %struct.page*, %struct.page** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @__free_pages(%struct.page* %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %57, %44
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.page**, %struct.page*** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %61
  store %struct.page* null, %struct.page** %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %13, align 4
  br label %54

65:                                               ; preds = %54
  br label %20

66:                                               ; preds = %20
  br label %149

67:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %68 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %69 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %68, i32 0, i32 1
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %111, %67
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %72
  %77 = load %struct.page**, %struct.page*** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.page*, %struct.page** %77, i64 %79
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = icmp ne %struct.page* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %76
  %84 = load %struct.page**, %struct.page*** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.page*, %struct.page** %84, i64 %86
  %88 = load %struct.page*, %struct.page** %87, align 8
  %89 = call i32 @page_count(%struct.page* %88)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %83
  %94 = load %struct.page**, %struct.page*** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.page*, %struct.page** %94, i64 %96
  %98 = load %struct.page*, %struct.page** %97, align 8
  %99 = getelementptr inbounds %struct.page, %struct.page* %98, i32 0, i32 0
  %100 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %101 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %100, i32 0, i32 2
  %102 = call i32 @list_add_tail(i32* %99, i32* %101)
  %103 = load %struct.page**, %struct.page*** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.page*, %struct.page** %103, i64 %105
  store %struct.page* null, %struct.page** %106, align 8
  %107 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %108 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %93, %76
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %72

114:                                              ; preds = %72
  store i32 0, i32* %6, align 4
  %115 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %116 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_manager, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ugt i32 %117, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %125 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_manager, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %126, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %123
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %140 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %139, i32 0, i32 1
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @ttm_page_pool_free(%struct.ttm_page_pool* %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %66, %145, %138
  ret void
}

declare dso_local %struct.ttm_page_pool* @ttm_get_pool(i32, i32, i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ttm_page_pool_free(%struct.ttm_page_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

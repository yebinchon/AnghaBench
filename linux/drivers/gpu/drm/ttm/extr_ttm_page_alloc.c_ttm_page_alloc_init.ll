; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ttm_mem_global = type { i32 }

@_manager = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Initializing pool allocator\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@GFP_USER = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wc dma\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"uc dma\00", align 1
@GFP_TRANSHUGE_LIGHT = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"wc huge\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"uc huge\00", align 1
@SMALL_ALLOCATION = common dso_local global i32 0, align 4
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@ttm_pool_kobj_type = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_page_alloc_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %9 = call i32 @WARN_ON(%struct.TYPE_7__* %8)
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_7__* @kzalloc(i32 40, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** @_manager, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 7
  %21 = load i32, i32* @GFP_HIGHUSER, align 4
  %22 = call i32 @ttm_page_pool_init_locked(i32* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  %25 = load i32, i32* @GFP_HIGHUSER, align 4
  %26 = call i32 @ttm_page_pool_init_locked(i32* %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* @GFP_USER, align 4
  %30 = load i32, i32* @GFP_DMA32, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ttm_page_pool_init_locked(i32* %28, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32, i32* @GFP_USER, align 4
  %36 = load i32, i32* @GFP_DMA32, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ttm_page_pool_init_locked(i32* %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  %42 = load i32, i32* @__GFP_NORETRY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @__GFP_MOVABLE, align 4
  %47 = load i32, i32* @__GFP_COMP, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ttm_page_pool_init_locked(i32* %40, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  %56 = load i32, i32* @__GFP_NORETRY, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @__GFP_MOVABLE, align 4
  %61 = load i32, i32* @__GFP_COMP, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ttm_page_pool_init_locked(i32* %54, i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @SMALL_ALLOCATION, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %81, i32 0, i32 0
  %83 = call i32 @kobject_init_and_add(i32* %80, i32* @ttm_pool_kobj_type, i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %18
  br label %100

90:                                               ; preds = %18
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %92 = call i32 @ttm_pool_mm_shrink_init(%struct.TYPE_7__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %100

99:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %105

100:                                              ; preds = %98, %89
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = call i32 @kobject_put(i32* %102)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @_manager, align 8
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %99, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @WARN_ON(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @ttm_page_pool_init_locked(i32*, i32, i8*, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_pool_mm_shrink_init(%struct.TYPE_7__*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

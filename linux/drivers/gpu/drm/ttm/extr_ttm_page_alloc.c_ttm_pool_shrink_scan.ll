; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_shrink_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_pool_shrink_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ttm_page_pool* }
%struct.ttm_page_pool = type { i32 }
%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32 }

@ttm_pool_shrink_scan.lock = internal global i32 0, align 4
@ttm_pool_shrink_scan.start_pool = internal global i32 0, align 4
@SHRINK_STOP = common dso_local global i64 0, align 8
@NUM_POOLS = common dso_local global i32 0, align 4
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrinker*, %struct.shrink_control*)* @ttm_pool_shrink_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ttm_pool_shrink_scan(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca %struct.shrink_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_page_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %5, align 8
  %14 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %15 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %17 = call i32 @mutex_trylock(i32* @ttm_pool_shrink_scan.lock)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @SHRINK_STOP, align 8
  store i64 %20, i64* %3, align 8
  br label %89

21:                                               ; preds = %2
  %22 = load i32, i32* @ttm_pool_shrink_scan.start_pool, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* @ttm_pool_shrink_scan.start_pool, align 4
  %24 = load i32, i32* @NUM_POOLS, align 4
  %25 = urem i32 %23, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %83, %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NUM_POOLS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %86

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* @NUM_POOLS, align 4
  %43 = urem i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %38, i64 %44
  store %struct.ttm_page_pool* %45, %struct.ttm_page_pool** %8, align 8
  %46 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %8, align 8
  %47 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @roundup(i32 %50, i32 %51)
  %53 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %8, align 8
  %54 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ttm_page_pool_free(%struct.ttm_page_pool* %57, i32 %58, i32 1)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub i32 %60, %61
  %63 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %8, align 8
  %64 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %72 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp uge i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %35
  br label %86

77:                                               ; preds = %35
  %78 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %8, align 8
  %79 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %26

86:                                               ; preds = %76, %34, %26
  %87 = call i32 @mutex_unlock(i32* @ttm_pool_shrink_scan.lock)
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %86, %19
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @ttm_page_pool_free(%struct.ttm_page_pool*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

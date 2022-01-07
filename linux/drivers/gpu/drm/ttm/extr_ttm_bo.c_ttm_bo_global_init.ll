; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_global_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_global = type { i32, i32, i32, i32*, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.ttm_bo_global* }

@ttm_bo_glob = common dso_local global %struct.ttm_bo_global zeroinitializer, align 8
@ttm_global_mutex = common dso_local global i32 0, align 4
@ttm_bo_glob_use_count = common dso_local global i32 0, align 4
@ttm_mem_glob = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4
@ttm_bo_glob_kobj_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"buffer_objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ttm_bo_global_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_global_init() #0 {
  %1 = alloca %struct.ttm_bo_global*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.ttm_bo_global* @ttm_bo_glob, %struct.ttm_bo_global** %1, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @ttm_global_mutex)
  %5 = load i32, i32* @ttm_bo_glob_use_count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @ttm_bo_glob_use_count, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %78

9:                                                ; preds = %0
  %10 = call i32 @ttm_mem_global_init(%struct.TYPE_3__* @ttm_mem_glob)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %78

14:                                               ; preds = %9
  %15 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %16 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %15, i32 0, i32 6
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %18, i32 0, i32 5
  store %struct.TYPE_3__* @ttm_mem_glob, %struct.TYPE_3__** %19, align 8
  %20 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %21 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.ttm_bo_global* %20, %struct.ttm_bo_global** %24, align 8
  %25 = load i32, i32* @__GFP_ZERO, align 4
  %26 = load i32, i32* @GFP_DMA32, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @alloc_page(i32 %27)
  %29 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %30 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %32 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %14
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %48 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %59 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %58, i32 0, i32 2
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %62 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %61, i32 0, i32 1
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %64, i32 0, i32 0
  %66 = call i32 (...) @ttm_get_kobj()
  %67 = call i32 @kobject_init_and_add(i32* %65, i32* @ttm_bo_glob_kobj_type, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %1, align 8
  %75 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %74, i32 0, i32 0
  %76 = call i32 @kobject_put(i32* %75)
  br label %77

77:                                               ; preds = %73, %57
  br label %78

78:                                               ; preds = %77, %38, %13, %8
  %79 = call i32 @mutex_unlock(i32* @ttm_global_mutex)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ttm_mem_global_init(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*) #1

declare dso_local i32 @ttm_get_kobj(...) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

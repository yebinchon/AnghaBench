; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.TYPE_2__*, %struct.ttm_mem_zone**, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_zone = type { i64, i32 }
%struct.sysinfo = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ttm_swap\00", align 1
@ttm_shrink_work = common dso_local global i32 0, align 4
@ttm_mem_glob_kobj_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"memory_accounting\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Zone %7s: Available graphics memory: %llu KiB\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_global_init(%struct.ttm_mem_global* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_mem_global*, align 8
  %4 = alloca %struct.sysinfo, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %3, align 8
  %8 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %8, i32 0, i32 7
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %14, i32 0, i32 5
  %16 = load i32, i32* @ttm_shrink_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %18, i32 0, i32 4
  %20 = call i32 (...) @ttm_get_kobj()
  %21 = call i32 @kobject_init_and_add(i32* %19, i32* @ttm_mem_glob_kobj_type, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %28, i32 0, i32 4
  %30 = call i32 @kobject_put(i32* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %1
  %33 = call i32 @si_meminfo(%struct.sysinfo* %4)
  %34 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %37 = call i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global* %36, %struct.sysinfo* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %100

44:                                               ; preds = %32
  %45 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %46 = call i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global* %45, %struct.sysinfo* %4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %100

53:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %57 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %61, i32 0, i32 2
  %63 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %63, i64 %65
  %67 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %66, align 8
  store %struct.ttm_mem_zone* %67, %struct.ttm_mem_zone** %7, align 8
  %68 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %69 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %72 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = lshr i64 %73, 10
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %81 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = mul nsw i32 2, %86
  %88 = sdiv i32 %85, %87
  %89 = call i32 @ttm_page_alloc_init(%struct.ttm_mem_global* %80, i32 %88)
  %90 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %91 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %92 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = mul nsw i32 2, %96
  %98 = sdiv i32 %95, %97
  %99 = call i32 @ttm_dma_page_alloc_init(%struct.ttm_mem_global* %90, i32 %98)
  store i32 0, i32* %2, align 4
  br label %104

100:                                              ; preds = %52, %43
  %101 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %102 = call i32 @ttm_mem_global_release(%struct.ttm_mem_global* %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %79, %27
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*) #1

declare dso_local i32 @ttm_get_kobj(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global*, %struct.sysinfo*) #1

declare dso_local i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global*, %struct.sysinfo*) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local i32 @ttm_page_alloc_init(%struct.ttm_mem_global*, i32) #1

declare dso_local i32 @ttm_dma_page_alloc_init(%struct.ttm_mem_global*, i32) #1

declare dso_local i32 @ttm_mem_global_release(%struct.ttm_mem_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, %struct.ttm_mem_zone**, i32* }
%struct.ttm_mem_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_mem_global_release(%struct.ttm_mem_global* %0) #0 {
  %2 = alloca %struct.ttm_mem_global*, align 8
  %3 = alloca %struct.ttm_mem_zone*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %2, align 8
  %5 = call i32 (...) @ttm_page_alloc_fini()
  %6 = call i32 (...) @ttm_dma_page_alloc_fini()
  %7 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @flush_workqueue(i32* %9)
  %11 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @destroy_workqueue(i32* %13)
  %15 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %20 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %24, i32 0, i32 2
  %26 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %26, i64 %28
  %30 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %29, align 8
  store %struct.ttm_mem_zone* %30, %struct.ttm_mem_zone** %3, align 8
  %31 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %3, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %31, i32 0, i32 0
  %33 = call i32 @kobject_del(i32* %32)
  %34 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %3, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %34, i32 0, i32 0
  %36 = call i32 @kobject_put(i32* %35)
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %41, i32 0, i32 1
  %43 = call i32 @kobject_del(i32* %42)
  %44 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %44, i32 0, i32 1
  %46 = call i32 @kobject_put(i32* %45)
  %47 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %48 = call i32 @memset(%struct.ttm_mem_global* %47, i32 0, i32 24)
  ret void
}

declare dso_local i32 @ttm_page_alloc_fini(...) #1

declare dso_local i32 @ttm_dma_page_alloc_fini(...) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @memset(%struct.ttm_mem_global*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
